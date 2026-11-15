.class public Lcom/hunantv/media/player/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v14, "FLA-AL10"

    const-string v15, "V1901A"

    const-string v0, "VIVO Y66I"

    const-string v1, "SLA-AL"

    const-string v2, "SLA-TL"

    const-string v3, "NEM-AL10"

    const-string v4, "OPPO A83"

    const-string v5, "GIONEE S10C"

    const-string v6, "Redmi Note 5A"

    const-string v7, "OPPO A57"

    const-string v8, "HUAWEI MLA-AL10"

    const-string v9, "V1813A"

    const-string v10, "KOB-W09"

    const-string v11, "OPPO R11"

    const-string v12, "Redmi 6"

    const-string v13, "Mi-4c"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/d/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/d/d;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/hunantv/media/player/utils/ArrayUtil;->inArrayIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
