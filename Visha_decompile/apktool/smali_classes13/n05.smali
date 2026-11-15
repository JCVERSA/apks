.class public final Ln05;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln05$b;,
        Ln05$a;
    }
.end annotation


# instance fields
.field public a:Ln05$a;

.field public b:Ln05$b;


# direct methods
.method public constructor <init>(Ln05$a;Ln05$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln05;->a:Ln05$a;

    iput-object p2, p0, Ln05;->b:Ln05$b;

    return-void
.end method

.method public static a()Ln05;
    .locals 17

    new-instance v0, Ln05;

    new-instance v8, Ln05$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ANDROID"

    const-string v3, "19.28.35"

    const-string v4, "WATCH"

    const-string v5, "3"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ln05$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo05;)V

    new-instance v1, Ln05$b;

    const/16 v15, 0x23

    const/16 v16, 0x0

    const-string v10, "MOBILE"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Android"

    const-string v14, "15"

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V

    invoke-direct {v0, v8, v1}, Ln05;-><init>(Ln05$a;Ln05$b;)V

    return-object v0
.end method

.method public static b()Ln05;
    .locals 17

    new-instance v0, Ln05;

    new-instance v8, Ln05$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "IOS"

    const-string v3, "20.03.02"

    const-string v4, "WATCH"

    const-string v5, "5"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ln05$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo05;)V

    new-instance v1, Ln05$b;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-string v10, "MOBILE"

    const-string v11, "Apple"

    const-string v12, "iPhone16,2"

    const-string v13, "iOS"

    const-string v14, "18.2.1.22C161"

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V

    invoke-direct {v0, v8, v1}, Ln05;-><init>(Ln05$a;Ln05$b;)V

    return-object v0
.end method

.method public static c()Ln05;
    .locals 17

    new-instance v0, Ln05;

    new-instance v8, Ln05$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "TVHTML5"

    const-string v3, "7.20250122.15.00"

    const-string v4, "WATCH"

    const-string v5, "7"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ln05$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo05;)V

    new-instance v1, Ln05$b;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-string v10, "GAME_CONSOLE"

    const-string v11, "Sony"

    const-string v12, "PlayStation 4"

    const-string v13, "PlayStation 4"

    const-string v14, ""

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V

    invoke-direct {v0, v8, v1}, Ln05;-><init>(Ln05$a;Ln05$b;)V

    return-object v0
.end method

.method public static d()Ln05;
    .locals 17

    new-instance v0, Ln05;

    new-instance v8, Ln05$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB"

    const-string v3, "2.20250122.04.00"

    const-string v4, "WATCH"

    const-string v5, "1"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ln05$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo05;)V

    new-instance v1, Ln05$b;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-string v10, "DESKTOP"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V

    invoke-direct {v0, v8, v1}, Ln05;-><init>(Ln05$a;Ln05$b;)V

    return-object v0
.end method

.method public static e()Ln05;
    .locals 17

    new-instance v0, Ln05;

    new-instance v8, Ln05$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB_EMBEDDED_PLAYER"

    const-string v3, "1.20250122.01.00"

    const-string v4, "EMBED"

    const-string v5, "56"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ln05$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo05;)V

    new-instance v1, Ln05$b;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const-string v10, "DESKTOP"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Ln05$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo05;)V

    invoke-direct {v0, v8, v1}, Ln05;-><init>(Ln05$a;Ln05$b;)V

    return-object v0
.end method
