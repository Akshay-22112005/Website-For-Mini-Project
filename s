<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cute Lamp 💡 with Login Form</title>
    <style>
        *,
        *:after,
        *:before {
            box-sizing: border-box;
        }

        :root {
            --cord: hsl(210, 0%, calc((40 + (var(--on, 0) * 50)) * 1%));
            --opening: hsl(50,
                    calc((10 + (var(--on, 0) * 80)) * 1%),
                    calc((20 + (var(--on, 0) * 70)) * 1%));
            --feature: #0a0a0a;
            --accent: 210;
            --tongue: #e06952;
            --base-top: hsl(var(--accent),
                    0%,
                    calc((40 + (var(--on, 0) * 40)) * 1%));
            --base-side: hsl(var(--accent),
                    0%,
                    calc((20 + (var(--on, 0) * 40)) * 1%));
            --post: hsl(var(--accent), 0%, calc((20 + (var(--on, 0) * 40)) * 1%));
            --b-1: hsla(45,
                    calc((0 + (var(--on, 0) * 0)) * 1%),
                    calc((50 + (var(--on, 0) * 50)) * 1%),
                    0.85);
            --b-2: hsla(45,
                    calc((0 + (var(--on, 0) * 0)) * 1%),
                    calc((20 + (var(--on, 0) * 30)) * 1%),
                    0.25);
            --b-3: hsla(45,
                    calc((0 + (var(--on, 0) * 0)) * 1%),
                    calc((20 + (var(--on, 0) * 30)) * 1%),
                    0.5);
            --b-4: hsla(45,
                    calc((0 + (var(--on, 0) * 0)) * 1%),
                    calc((20 + (var(--on, 0) * 30)) * 1%),
                    0.25);
            --l-1: hsla(45,
                    calc((0 + (var(--on, 0) * 20)) * 1%),
                    calc((50 + (var(--on, 0) * 50)) * 1%),
                    0.85);
            --l-2: hsla(45,
                    calc((0 + (var(--on, 0) * 20)) * 1%),
                    calc((50 + (var(--on, 0) * 50)) * 1%),
                    0.85);
            --shade-hue: 320;
            --t-1: hsl(var(--shade-hue),
                    calc((0 + (var(--on, 0) * 20)) * 1%),
                    calc((30 + (var(--on, 0) * 60)) * 1%));
            --t-2: hsl(var(--shade-hue),
                    calc((0 + (var(--on, 0) * 20)) * 1%),
                    calc((20 + (var(--on, 0) * 35)) * 1%));
            --t-3: hsl(var(--shade-hue),
                    calc((0 + (var(--on, 0) * 20)) * 1%),
                    calc((10 + (var(--on, 0) * 20)) * 1%));
            --glow-color: hsl(320, 40%, 45%);
            --glow-color-dark: hsl(320, 40%, 35%);
        }

        body {
            min-height: 100vh;
            display: grid;
            place-items: center;
            background: #121921;
            margin: 0;
            font-family: system-ui, -apple-system, sans-serif;
            padding: 1rem;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 4vmin; /* Reduced gap for better mobile fit */
            flex-wrap: wrap;
            padding: 2rem;
            width: 100%;
            max-width: 1200px;
        }

        .login-form {
            background: rgba(18, 25, 33, 0.9);
            padding: 2rem 2rem; /* Adjusted padding for mobile */
            border-radius: 20px;
            min-width: 280px; /* Smaller min-width for mobile */
            width: 100%;
            max-width: 400px;
            opacity: 0;
            transform: scale(0.8) translateY(20px);
            pointer-events: none;
            transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
            border: 2px solid transparent;
            box-shadow: 0 0 0px rgba(255, 255, 255, 0);
        }

        .login-form.active {
            opacity: 1;
            transform: scale(1) translateY(0);
            pointer-events: all;
            border-color: var(--glow-color);
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.1),
                0 0 30px var(--glow-color), inset 0 0 15px rgba(255, 255, 255, 0.05);
        }

        .login-form h2 {
            color: #fff;
            font-size: clamp(1.5rem, 5vw, 2rem); /* Responsive font size */
            margin: 0 0 2rem 0;
            text-align: center;
            text-shadow: 0 0 8px var(--glow-color);
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            color: #aaa;
            font-size: clamp(0.8rem, 3vw, 0.9rem); /* Responsive font size */
            margin-bottom: 0.5rem;
            text-shadow: 0 0 5px var(--glow-color);
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem 1rem;
            background: rgba(255, 255, 255, 0.05);
            border: 2px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            color: #fff;
            font-size: clamp(0.9rem, 3vw, 1rem); /* Responsive font size */
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            outline: none;
            border-color: var(--glow-color);
            box-shadow: 0 0 10px var(--glow-color);
            background: rgba(255, 255, 255, 0.08);
        }

        .form-group input::placeholder {
            color: #666;
        }

        .login-btn {
            width: 100%;
            padding: 0.875rem;
            background: linear-gradient(135deg,
                    var(--glow-color),
                    var(--glow-color-dark));
            border: none;
            border-radius: 10px;
            color: #fff;
            font-size: clamp(0.9rem, 3vw, 1rem); /* Responsive font size */
            font-weight: 600;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            margin-top: 0.5rem;
            transition: all 0.3s ease;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3), 0 0 20px var(--glow-color);
        }

        .login-btn:active {
            transform: translateY(0);
        }

        .form-footer {
            margin-top: 1.5rem;
            text-align: center;
        }

        .forgot-link {
            color: #888;
            font-size: clamp(0.8rem, 3vw, 0.9rem); /* Responsive font size */
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .forgot-link:hover {
            color: var(--glow-color);
            text-shadow: 0 0 10px var(--glow-color);
        }

        .radio-controls {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border-width: 0;
        }

        .lamp-wrapper {
            position: relative;
            display: inline-block;
        }

        .lamp {
            display: none;
            height: clamp(200px, 40vmin, 300px); /* Responsive height with clamp */
            overflow: visible !important;
            max-height: 300px;
        }

        /* --- Cloud and Hint Styles --- */
        .lamp-hint {
            position: absolute;
            top: 20%;
            left: 50%;
            /* Adjusted positioning to be above the lamp's shade */
            top: -10%;
            transform: translate(-50%, -100%) scale(0.8);
            opacity: 0;
            transition: all 0.3s ease-out;
            pointer-events: none;
            z-index: 10;
            filter: drop-shadow(0 4px 6px rgba(0, 0, 0, 0.3));
        }

        .lamp-hint.active {
            opacity: 1;
            transform: translate(-50%, -100%) scale(1);
            /* Animation: simple bounce/jiggle */
            animation: hint-pop 1s ease-out 1;
        }

        @keyframes hint-pop {
            0% {
                transform: translate(-50%, -100%) scale(0.8);
            }

            80% {
                transform: translate(-50%, -110%) scale(1.05);
            }

            100% {
                transform: translate(-50%, -100%) scale(1);
            }
        }

        .cloud {
            width: clamp(70px, 15vw, 87px); /* Responsive width */
            height: clamp(40px, 10vw, 51px); /* Responsive height */
            background: rgb(94, 250, 209);
            border-radius: 82px;
            /* This will be the main body of the cloud */
            position: relative;
            /* Essential for positioning pseudo-elements */
            padding: 10px 15px;
            color: #121921;
            font-weight: bold;
            text-align: center;
            font-size: clamp(0.6rem, 2vw, 0.7rem); /* Responsive font size */
            box-shadow: -1px 0px 8px 6px rgb(247 247 247 / 20%);
            z-index: 2;
            transform: translate(207px, 21px);
            /* Keep your existing positioning */
            display: flex;
            /* Helps center text vertically if needed */
            align-items: center;
            /* Helps center text vertically */
            justify-content: center;
            /* Helps center text horizontally */
        }

        /* Pseudo-element for the left bump of the cloud */
        .cloud::before {
            content: '';
            /* Required for pseudo-elements */
            background: inherit;
            /* Inherit the main cloud's background color */
            border-radius: 50%;
            /* Make it a perfect circle */
            position: absolute;
            width: clamp(30px, 8vw, 40px); /* Responsive size */
            /* Adjust size as needed */
            height: clamp(30px, 8vw, 40px); /* Responsive size */
            /* Adjust size as needed */
            top: -15px;
            /* Move it up to overlap the main body */
            left: 10px;
            /* Position it to the left */
            box-shadow: inherit;
            /* Inherit the shadow for a consistent look */
            z-index: -1;
            /* Place it behind the main cloud content */
        }

        /* Pseudo-element for the right bump of the cloud */
        .cloud::after {
            content: '';
            /* Required for pseudo-elements */
            background: inherit;
            /* Inherit the main cloud's background color */
            border-radius: 50%;
            /* Make it a perfect circle */
            position: absolute;
            width: clamp(35px, 10vw, 50px); /* Responsive size */
            /* Slightly larger bump */
            height: clamp(35px, 10vw, 50px); /* Responsive size */
            top: -10px;
            /* Slightly lower than the left bump */
            right: 5px;
            /* Position it to the right */
            box-shadow: inherit;
            /* Inherit the shadow */
            z-index: -1;
            /* Place it behind the main cloud content */
        }

        /* --- Thought Bubbles/Arrows --- */
        .cloud-arrow {
            display: none;
        }

        /* Hide old arrow */

        /* Thought Bubble Wrapper */
        .thought-bubbles {
            position: absolute;
            bottom: -15px;
            /* Adjust based on cloud height (50px) */
            left: 50%;
            transform: translateX(-50%);
            width: clamp(80px, 20vw, 100px); /* Responsive width */
            /* Width for positioning bubbles */
            height: clamp(40px, 10vw, 50px); /* Responsive height */
        }

        .bubble {
            position: absolute;
            background: white;
            border-radius: 50%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .bubble-small {
            width: clamp(6px, 2vw, 8px); /* Responsive size */
            height: clamp(6px, 2vw, 8px); /* Responsive size */
            bottom: 0px;
            left: clamp(150px, 40vw, 194px); /* Responsive position */
        }

        .bubble-medium {
            width: clamp(12px, 4vw, 15px); /* Responsive size */
            height: clamp(12px, 4vw, 15px); /* Responsive size */
            bottom: -10px;
            left: clamp(130px, 35vw, 165px); /* Responsive position */
        }

        .bubble-large {
            width: clamp(20px, 6vw, 25px); /* Responsive size */
            height: clamp(20px, 6vw, 25px); /* Responsive size */
            bottom: -20px;
            left: clamp(90px, 25vw, 117px); /* Responsive position */
        }

        /* --- End Cloud Styles --- */

        .cord {
            stroke: var(--cord);
        }

        .cord--rig {
            display: none;
        }

        .lamp__tongue {
            fill: var(--tongue);
        }

        .lamp__hit {
            cursor: pointer;
            opacity: 0;
        }

        .lamp__feature {
            fill: var(--feature);
        }

        .lamp__stroke {
            stroke: var(--feature);
        }

        .lamp__mouth,
        .lamp__light {
            opacity: var(--on, 0);
        }

        .shade__opening {
            fill: var(--opening);
        }

        .shade__opening-shade {
            opacity: calc(1 - var(--on, 0));
        }

        .post__body {
            fill: var(--post);
        }

        .base__top {
            fill: var(--base-top);
        }

        .base__side {
            fill: var(--base-side);
        }

        .top__body {
            fill: var(--t-3);
        }

        /* Media Queries for better responsiveness */
        @media (max-width: 768px) {
            .container {
                gap: 2vmin;
                padding: 1rem;
            }

            .login-form {
                padding: 1.5rem 1.5rem;
            }

            .lamp-hint {
                top: -5%; /* Adjust hint position on mobile */
            }

            .cloud {
                transform: translate(150px, 15px); /* Adjust cloud position */
            }

            .thought-bubbles .bubble-small {
                left: 120px;
            }

            .thought-bubbles .bubble-medium {
                left: 100px;
            }

            .thought-bubbles .bubble-large {
                left: 60px;
            }
        }

        @media (max-width: 480px) {
            .container {
                flex-direction: column;
                gap: 1rem;
            }

            .lamp {
                height: 250px; /* Fixed height for very small screens */
            }

            .login-form {
                min-width: 250px;
            }

            .lamp-hint {
                top: -15%;
            }

            .cloud {
                width: 60px;
                height: 35px;
                font-size: 0.5rem;
                transform: translate(100px, 10px);
            }

            .cloud::before {
                width: 25px;
                height: 25px;
            }

            .cloud::after {
                width: 30px;
                height: 30px;
            }

            .thought-bubbles {
                width: 60px;
                height: 30px;
            }

            .bubble-small {
                width: 5px;
                height: 5px;
                left: 80px;
            }

            .bubble-medium {
                width: 10px;
                height: 10px;
                left: 60px;
            }

            .bubble-large {
                width: 15px;
                height: 15px;
                left: 30px;
            }
        }
