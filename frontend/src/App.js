import "./App.css";
import { useState, useEffect } from "react";
import avatar from "./assets/avatar.jpg";

function App() {
    const [loading, setLoading] = useState(false);
    const [profile, setProfile] = useState(null);

    useEffect(() => {
        setLoading(true);
        fetch(
            `https://${process.env.REACT_APP_BACKEND_APP_NAME}.herokuapp.com/profile`
        )
            .then((response) => response.json())
            .then((data) => {
                console.log(data);
                setProfile(data);
                setLoading(false);
            });
    }, []);

    return (
        <>
            {loading === false ? (
                <>
                    <img className="avatar" alt="avatar" src={avatar} />
                    <h2 className="name">
                        My name is <span>{profile?.name}</span>
                    </h2>
                    <p className="bio">{profile?.bio}</p>
                    {profile?.links.map((link, index) => (
                        <a
                            className="link"
                            href={link?.url}
                            target="_blank"
                            rel="noreferrer"
                            key={index}
                        >
                            {link?.link_name}
                        </a>
                    ))}
                </>
            ) : (
                <p className="loading">Loading...</p>
            )}
        </>
    );
}

export default App;
