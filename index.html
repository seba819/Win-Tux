<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hogar</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Share+Tech+Mono&family=Rajdhani:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --bg:        #080c0a;
            --surface:   #0e1410;
            --border:    #1f3326;
            --green:     #3ddc68;
            --green-dim: #267a3f;
            --green-glow:#3ddc6833;
            --text:      #c8dece;
            --text-dim:  #5a7a62;
            --accent:    #7fffa0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-color: var(--bg);
            background-image: url("5120x2880.png");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: var(--text);
            font-family: 'Rajdhani', sans-serif;
            font-size: 17px;
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* ── Overlay oscuro + grid terminal sobre el fondo ── */
        body::before {
            content: '';
            position: fixed;
            inset: 0;
            background:
                linear-gradient(var(--border) 1px, transparent 1px),
                linear-gradient(90deg, var(--border) 1px, transparent 1px),
                rgba(6, 10, 8, 0.72);
            background-size: 40px 40px, 40px 40px, auto;
            pointer-events: none;
            z-index: 0;
        }

        /* ── Scanline overlay ── */
        body::after {
            content: '';
            position: fixed;
            inset: 0;
            background: repeating-linear-gradient(
                0deg,
                transparent,
                transparent 2px,
                rgba(0,0,0,0.08) 2px,
                rgba(0,0,0,0.08) 4px
            );
            pointer-events: none;
            z-index: 0;
        }

        /* ── Header ── */
        header {
            position: relative;
            z-index: 1;
            padding: 60px 40px 30px;
            text-align: center;
            border-bottom: 1px solid var(--border);
        }

        .header-tag {
            font-family: 'Share Tech Mono', monospace;
            font-size: 12px;
            color: var(--green-dim);
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 12px;
            animation: fadeIn 0.6s ease both;
        }

        h1 {
            font-size: clamp(28px, 5vw, 52px);
            font-weight: 700;
            color: var(--accent);
            letter-spacing: 2px;
            text-transform: uppercase;
            text-shadow: 0 0 30px var(--green-glow), 0 0 60px var(--green-glow);
            animation: fadeIn 0.6s 0.1s ease both;
            line-height: 1.1;
        }

        .subtitle {
            font-family: 'Share Tech Mono', monospace;
            font-size: 13px;
            color: var(--text-dim);
            margin-top: 10px;
            animation: fadeIn 0.6s 0.2s ease both;
        }

        .subtitle span {
            color: var(--green);
        }

        /* ── Layout principal ── */
        .grid {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: auto auto;
            gap: 16px;
            max-width: 1100px;
            margin: 50px auto;
            padding: 0 24px;
        }

        /* ── Cards ── */
        .card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 4px;
            padding: 28px 24px;
            position: relative;
            overflow: hidden;
            transition: border-color 0.3s, transform 0.3s, box-shadow 0.3s;
            animation: slideUp 0.5s ease both;
        }

        .card:hover {
            border-color: var(--green-dim);
            transform: translateY(-3px);
            box-shadow: 0 8px 32px rgba(61,220,104,0.08), 0 0 0 1px var(--green-dim);
        }

        /* Línea decorativa superior */
        .card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 2px;
            background: linear-gradient(90deg, transparent, var(--green-dim), transparent);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .card:hover::before {
            opacity: 1;
        }

        /* Número de card */
        .card-num {
            font-family: 'Share Tech Mono', monospace;
            font-size: 11px;
            color: var(--text-dim);
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .card h2 {
            font-size: 18px;
            font-weight: 700;
            color: var(--text);
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 8px;
        }

        .card p {
            font-family: 'Share Tech Mono', monospace;
            font-size: 12px;
            color: var(--text-dim);
            margin-bottom: 18px;
            line-height: 1.6;
        }

        /* ── Links / botones ── */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--green);
            font-family: 'Share Tech Mono', monospace;
            font-size: 13px;
            text-decoration: none;
            padding: 9px 16px;
            border: 1px solid var(--green-dim);
            border-radius: 3px;
            background: transparent;
            transition: background 0.2s, color 0.2s, box-shadow 0.2s;
            margin-top: 4px;
            width: 100%;
            justify-content: center;
        }

        .btn:hover {
            background: var(--green-glow);
            color: var(--accent);
            box-shadow: 0 0 12px var(--green-glow);
        }

        .btn::before {
            content: '▶';
            font-size: 9px;
            opacity: 0.6;
        }

        .btn-primary {
            border-color: var(--green);
            color: var(--accent);
            font-size: 14px;
            padding: 12px 16px;
        }

        .btn-primary:hover {
            background: rgba(61,220,104,0.15);
            box-shadow: 0 0 20px var(--green-glow);
        }


        /* ── Animaciones ── */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-6px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        .card:nth-child(1) { animation-delay: 0.1s; }
        .card:nth-child(2) { animation-delay: 0.2s; }
        .card:nth-child(3) { animation-delay: 0.3s; }
        .card:nth-child(4) { animation-delay: 0.4s; }
        .card:nth-child(5) { animation-delay: 0.5s; }
        .card:nth-child(6) { animation-delay: 0.6s; }

        /* ── Footer ── */
        footer {
            position: relative;
            z-index: 1;
            text-align: center;
            padding: 30px;
            border-top: 1px solid var(--border);
            font-family: 'Share Tech Mono', monospace;
            font-size: 11px;
            color: var(--text-dim);
            letter-spacing: 2px;
        }

        footer span {
            color: var(--green-dim);
        }

        /* ── Responsive ── */
        @media (max-width: 768px) {
            .grid {
                grid-template-columns: 1fr;
                margin: 30px auto;
            }

            .card-featured {
                grid-column: 1;
                grid-row: auto;
            }

            header {
                padding: 40px 20px 20px;
            }
        }

        @media (min-width: 769px) and (max-width: 1024px) {
            .grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .card-featured {
                grid-column: 1 / -1;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="header-tag">Cocos</div>
        <h1>Escoge tu camino</h1>
        <p class="subtitle">Por favor seleccione entre <span>Arch, Android y Win-Tux</span> &nbsp;&nbsp; &nbsp;&nbsp;</p>
    </header>

    <div class="grid">

        <!-- Card 1: Arch Linux -->
        <div class="card">
            <div class="card-num">// 01</div>
            <h2>Arch Linux</h2>
            <p>Todo lo que necesitas para perderle el miedo a Arch Linux</p>
            <a class="btn" href="https://shelter-nine-scheme-project.trycloudflare.com/Web/Arch Linux/Tutoriales">
                Arch Linux
            </a>
        </div>

        <!-- Card 2: Android -->
        <div class="card">
            <div class="card-num">// 02</div>
            <h2>Android</h2>
            <p>Guias de optimización de Android, ademas de su respectiva liberación</p>
            <a class="btn" href="https://shelter-nine-scheme-project.trycloudflare.com/Web/Android">
                Android
            </a>
        </div>

        <!-- Card 3: Win-Tux -->
        <div class="card">
            <div class="card-num">// 03</div>
            <h2>Win-Tux (Windows 10 LTSC 21H2 Optimizado)</h2>
            <p>El hogar de Win-Tux</p>
            <a class="btn" href="https://shelter-nine-scheme-project.trycloudflare.com/Web/Win-Tux">
                Win-Tux
            </a>
        </div>
    </div>

    <footer>

    </footer>

</body>
</html>
