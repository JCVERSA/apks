.class public final enum Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum CELP:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HILN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HVXC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum LOW_COMPLEXITY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN_SYNTHESIS:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum SCALEABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TTSI:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TWIN_VQ:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_LC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum WAVETABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 13

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v9, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v10, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v11, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v12, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    filled-new-array/range {v0 .. v12}, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "Main"

    const-string v2, "MAIN"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "Low Complexity"

    const-string v2, "LOW_COMPLEXITY"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "Scaleable Sample rate"

    const-string v2, "SCALEABLE"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T/F"

    const-string v2, "T_F"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T/F Main"

    const-string v2, "T_F_MAIN"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "T/F LC"

    const-string v2, "T_F_LC"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "TWIN"

    const-string v2, "TWIN_VQ"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "CELP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "HVXC"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "HILN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "TTSI"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "MAIN_SYNTHESIS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v1, "WAVETABLE"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    return p0
.end method
