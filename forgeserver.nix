{
  config,
  lib,
  pkgs,
  ...
}:

{
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.settings.dns_enabled = true;
  };

  virtualisation.oci-containers.backend = "podman";

  virtualisation.oci-containers.containers."forgeserver" = {
    autoStart = false;
    user = "root";
    image = "itzg/minecraft-server:java17-graalvm";
    ports = [
      "25565:25565/tcp"
      "25565:25565/udp"
      "24454:24454/udp"
    ];
    volumes = [
      "/home/nix/forgeserver:/data:rw"
      "/mnt/t330/backups/forgeserver5:/data/backups:rw"
    ];
    environment = {
      "EULA" = "TRUE";
      "TYPE" = "FORGE";
      "VERSION" = "1.20.1";
      "FORGE_VERSION" = "47.4.10";
      "MEMORY" = "16384M";
      "MAX_PLAYERS" = "32";
      "MOTD" = ":)";
      "ICON" = "/data/icon.png";
      "USE_MEOWICE_FLAGS" = "true";
      "USE_MEOWICE_GRAALVM_FLAGS" = "true";
      "DIFFICULTY" = "3";
      "SPAWN_PROTECTION" = "0";
      "REGION_FILE_COMPRESSION" = "lz4";
      "OPS" =
        "chsck
        nvmcd";
      "ALLOW_FLIGHT" = "true";
      "MAX_TICK_TIME" = "240000";
      # neccessary mod versions:
      # steam n rails: 1.7.1
      # minecolonies: 1.1.1143-snapshot
      # multipiston: 1.2.43-RELEASE
      # mutil: 6.2.0
      # structurize: 1.0.788-snapshot
      # tetra: 6.12.0
      "MODS" =
        "https://storage.ps2.dev/public/mc/destroy-1.20.1-0.1.3-i0-all.jar
        https://storage.ps2.dev/public/mc/Dungeon%20Now%20Loading-forge-1.20.1-2.2.jar
        https://storage.ps2.dev/public/mc/lionfishapi-2.4.jar";
      "MODRINTH_PROJECTS_DEFAULT_VERSION_TYPE" = "beta";
      "MODRINTH_PROJECTS" =
        "absent-by-design:1.9.0
        alexs-caves:2.0.2
        alexs-mobs:1.22.9
        almanac:DnzrwvfD
        ambientsounds:viZ543s0
        amendments:73W8UHX3
        adaptive-performance-tweaks-core:lyiW3FfI
        adaptive-performance-tweaks-gamerules:LEZTKCzX
        adaptive-performance-tweaks-items:i25Vc8Bg
        adaptive-performance-tweaks-player:QnOXtQGV
        adaptive-performance-tweaks-spawn:CAThdrYi
        advanced-backups:aJSTD0EJ
        architectury-api:9.2.14+forge
        aquamirae:6.3.3
        ars-creo:4.3.0
        ars-nouveau:4.12.7
        ars-ocultas:1.20.1-1.2.2
        artifacts:9.5.19
        attributefix:21.0.5
        fabric:axiom:5.3.0
        baguettelib:vLbvKK04
        balm:7.3.38+forge-1.20.1
        better-archeology:1.2.1-1.20.1
        better-combat:1.9.0+1.20.1-forge
        biome-makeover:forge-1.20.1-1.11.4
        biomespy:1.3.3
        block-swap:5.0.0.0
        blueprint:7.1.3
        botarium:2.3.4
        bountiful:6.0.4+1.20.1
        buddycards:1.20.1-4.1.0
        l_enders-cataclysm:TFKWu05d
        cataclysm-x-bettercombat-compat:bKqqAtgG
        cave-delight:2.0.1
        cc-tweaked:5F5BaGQ4
        cc-vs:0.6.5
        cccbridge:1.7.1
        chococraft:unBrj1OZ
        ct-overhaul-village:3.4.14
        chunky:4FTDk9wv
        citadel:2.6.3
        cloth-config:11.1.136+forge
        fabric:clumps:hefSwtn6
        cold-sweat:2.4
        comforts:gBDsc134
        connector:dmW0aite
        connector-extras:d28gpPn6
        coroutil:1.20.1-1.3.7
        crackers-wither-storm-mod:4.2.1
        crafttweaker:14.0.60
        create:mc1.20.1-6.0.8
        create-big-cannons:5.11.2
        create-clockwork:1.20.1-forge-0.5.5.2
        create-compatible-storage:2.11.0
        create-compressed:2.1.0
        create-confectionery:1.1.0
        createaddition:forge-1.20.1-1.3.
        create-deco:2.0.3-1.20.1-forge
        create-enchantment-industry:1.3.3
        create-estrogen:1.0.1+1.20.1-forge
        bellsandwhistles:0.4.5-1.20.x
        blocks-bogies:1.0.7-1.20.1
        create-central-kitchen:1.4.3b
        create-tweaked-controllers:1.20.1-1.2.5
        copycats:z7s54cjL
        genderless:1.1.1+1.20.1
        create-horse-power:mc1.20.1-1.1.0
        interactive:EScBvcOc
        interiors:1.20.1-forge-0.6.0
        create-molten-vents:2.0.9
        create-netherless:1.3.0
        create-oppenheimered:1.0.5
        create-pattern-schematics:1.3.3
        power-grid:0.5.4
        create-power-loader:2.0.3-mc1.20.1
        create-radars:Hv9crErp
        createschematicchecker:1.20.1-0.21.18-6.0
        create-steam-n-rails:1.7.1+forge-mc1.20.1
        create-tfmg:ZNOx0jhg
        create-misc-and-things:4.1.0
        createtweaker:4.0.15
        creativecore:p6pvilEm
        creeper-overhaul:3.0.2
        cuisine-delight:W8HtUUqB
        curios:5.14.1+1.20.1
        curtain:1.3.2
        cut-through:v8.0.2-1.20.1-Forge
        cynosure:0.1.16-forge
        difficult-raids-compatibility-edition:2.0-beta22
        dungeons-and-taverns:3.0.3.f+mod
        dynamictrees:1.20.1-1.4.10
        dynamic-trees-quark:1.20.1-2.5.3
        dynamic-trees-ru:1.20.1-1.0.1
        dynamic-trees-terralith:1.20.1-1.2.6
        emi:1.1.22+1.20.1+forge
        emiffect:forge-1.1.2+mc1.20.1
        emitrades:forge-1.2.1+mc1.20.1
        emi-enchanting:0.1.2+1.20.1+forge
        emi-loot:0.7.9+1.20.1+forge
        emi-ores:1.2+1.20.1+forge
        endrem:5.3.3-R-1.20.1
        enderman-overhaul:1.0.4
        neoforge:engineered-compatibility:2.4.0
        enlightend:5.0.14
        epherolib:vZWRmjl2
        epic-knights-shields-armor-and-weapons:2kK9qUpx
        estrogen:5.0.8+1.20.1-forge
        etched:3.0.4
        every-compat:1.20-2.9.19-forge
        exposure:1.9.20
        farmers-delight:1.20.1-1.2.11
        fast-paintings:Bvjyyy1T
        ferrite-core:DG5Fn9Sz
        field-guide:1.6.9-1.20.1-forge
        fishing-real:1.9.1-backport
        flib:1.20.1-0.0.14
        forgified-fabric-api:XweDEycJ
        friends-and-foes-forge:forge-mc1.20.1-3.0.9
        fzzy-config:0.7.6+1.20.1+forge
        galosphere:1.20.1-1.5.0
        geckolib:HVdLnQMI
        glitchcore:0.0.1.1
        gravestone-mod:forge-1.20.1-1.0.35
        gravestone-x-curios-api-compat:4.0.2
        handcrafted:3.0.6
        iceberg:1.1.25
        immersiveengineering:10.2.0-183
        immersive-overlays:1.6.3+1.20.1-forge
        immersive-weathering:Fl2lADP9
        item-obliterator:2.3.1
        nbtedit-reborn:tR4Z5Ijy
        integrated-api:1.7.2+1.20.1-forge
        integrated-stronghold:1.1.1+1.20.1-forge
        jamlib:hSQgYxv0
        jei:p7yZWpEg
        jeitweaker:BTMxPqmn
        joy-of-painting:1.20.1-1.1.0
        kambrik:er56DwLJ
        kleeslabs:15.0.11+forge-1.20.1
        kotlin-for-forge:4.12.0
        krypton-fnp:0.2.28.2-1.20.1
        kubejs:g5igndAv
        kubejs+cc-tweaked:1.0.1-beta
        kubejs-create:5vppyenb
        kubejs-delight:1.20.1-1.1.2
        kubejs-gui:xVJMSoSd
        kubejs-tfmg:1.20.1-1.3.2
        lmd:1.5.0
        lithostitched:1.4.11-forge-1.20
        log-begone:HEJGfa5J
        lootjs:1.20.1-2.13.1+forge
        map-atlases-forge:1.20-6.0.19
        memoryleakfix:3w0IxNtk
        mmmmmmmmmmmm:1.20-2.0.9
        mobtimizations:1.20.1-1.0.0
        modernfix:5.27.6+mc1.20.1
        modonomicon:1.20.1-1.79.3
        mcda:5.0.2
        moonlight:4f5Vm2TE
        music-maker-mod:1.20.1-1.0.3
        mutil:6.2.0
        necronomicon:1.6.0+1.20.1
        nightlights:7QFRIFZg
        no-chat-reports:Forge-1.20.1-v2.2.2
        no-fly-zone:1.20.1-1.0.6
        notenoughrecipebook:xXV9YBzF
        nyfs-spiders:INtO3mib
        obscure-api:18
        observable:4.4.2+forge
        occultism:1.20.1-1.157.0
        octo-lib:HZ7KmyXp
        oreganized:4.3.2
        packet-fixer:9F4NGhGR
        patchouli:1.20.1-85-forge
        petrolpark:1.20.1-1.4.27
        platform:1.3.2
        playeranimator:1.0.2-rc1+1.20-forge
        polymorph:UZBKtFyR
        potacore:0.4.2
        puzzles-lib:v8.1.33-1.20.1-Forge
        quark:1.20.1-4.0-462
        rechiseled:1.2.4-forge-mc1.20.1
        rechiseled-create:1.1.0-forge-mc1.20
        regions-unexplored:F-0.5.6+1.20.1
        relics-mod:0.8.0.13
        rac-compat:0.1.3
        ram-compat:0.1.4
        reliquified-artifacts:HwYQ3pio
        resourceful-config:DERs8u7v
        resourceful-lib:2.1.29
        rhino:uNALdylI
        rightclickharvest:NFxivT5s
        rpl:2.1.1
        saturn:mc1.20.1-0.1.3
        sdm-shop:1.20.1-7.2.0
        sdm-ui-lib:1.20.1-1.8.3
        searchables:PM9yAW1G
        second-chance-forge:1.20-1.5.1
        serene-seasons:9.1.0.2
        serializationisbad:1.5.2
        servercore:rx1c7m6q
        simple-voice-chat:forge-1.20.1-2.6.16
        smartbrainlib:1.15
        sophisticated-backpacks:1.20.1-3.24.35.1675
        sophisticated-core:1.20.1-1.3.21.1676
        spark:1.10.53-forge
        spice-of-life-apple-pie-edition:2.3.1
        starcatcher:2.2.1-FORGE-1.20.1
        storagedrawers:8raubcF4
        structurify:forge-2.0.22+mc1.20.1
        supermartijn642s-config-lib:1.1.8-forge-mc1.20
        supermartijn642s-core-lib:1.1.21-forge-mc1.20.1
        supplementaries:1.20-3.1.43-forge
        supplementaries-squared:1.20-1.1.29
        table-top-craft:1.20.1-6.1.2
        tree-giant:2.0.1
        tectonic:KLmvRxwh
        terrablender:3.0.1.10
        terralith:WeYhEb5d
        tetra:6.12.0
        tetracelium:1.3.1
        tetra-extras:UV4t9tjE
        trackwork:1.20.1-1.2.3
        true-ending:1.1.0c+mod
        twigs:1.20.1-3.1.1
        unionlib:1.20.1-12.0.18-Forge
        useful-spyglass:1.0.1
        valkib:PIuROoPL
        valkyrien-sails:1.20.1-0.3.0-forge
        valkyrien-skies:1.20.1-forge-2.4.11
        vanillabackport:1.1.6.3
        villager-restock-balance:1.0.0+mod
        vlib:lEFffQqd
        wesleys-roguelike-dungeons:Md7628mU
        what-are-they-up-to:GpiXMxvP
        what-are-you-voting-for-2023:aGgzILtB
        yacl:3.6.6+1.20.1-forge
        yungs-api:1.20-Forge-4.0.6
        yungs-better-desert-temples:1.20-Forge-3.0.3
        yungs-better-dungeons:1.20-Forge-4.0.4
        yungs-better-end-island:1.20-Forge-2.0.6
        yungs-better-jungle-temples:1.20-Forge-2.0.5
        yungs-better-mineshafts:1.20-Forge-4.0.4
        yungs-better-nether-fortresses:1.20-Forge-2.0.6
        yungs-better-ocean-monuments:1.20-Forge-3.0.4
        yungs-better-witch-huts:1.20-Forge-3.0.3
        yungs-bridges:1.20-Forge-4.0.3
        yungs-extras:1.20-Forge-4.0.3
        yungs-menu-tweaks:1.20.1-Forge-1.0.2
        zeta:1.20.1-1.0-31";
      "CF_API_KEY" = (builtins.readFile ./cf-api-key);
      "CURSEFORGE_FILES" =
        "advanced-chimneys:7514477
        alexs-delight:5028450
        antique-atlas:6849138
        aquamirae-x-better-combat-compatibility:5375670
        ars-elemental:7696902
        ars-instrumentum:5047343
        ars-nouveau-extended-glyphs:5529443
        ars-technica:6587052
        bocchium:5086758
        chisels-bits:7620767
        chocorafts-delight:5554519
        client-crafting:7625507
        configured:5180900
        connectivity:7366161
        cosmetic-armor-reworked:4600191
        create-arm-made-cuisine:7473211
        create-colonial:7384684
        createcolonies:7134076
        create-heat-js:7704749
        cupboard:7905744
        doespotatotick:7449395
        domum-ornamentum:7795595
        duplicationless:7488665
        engineers-delight:5522764
        fastsuite:7527943
        forgeendertech:7628389
        ftb-library-forge:7296748
        ftb-teams-forge:7499810
        kubejs-ars-nouveau:4862554
        large-ore-deposits:7657639
        minecolonies:7312689
        multi-piston:5204918
        placebo:6274231
        pollution-of-the-realms:7723739
        sdm-economy:6689080
        structurize:7277326
        supplylines:7646556
        tetranomicon:6286722
        tact:7641715
        towntalk:5355511
        blockui:7606230
        minecolonies-war-n-taxes:7451381";
      "RCON_CMDS_FIRST_CONNECT" = "gamerule doFireTick true";
      "RCON_CMDS_LAST_DISCONNECT" = "gamerule doFireTick false";
    };
  };
}
