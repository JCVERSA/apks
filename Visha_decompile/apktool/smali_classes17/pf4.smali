.class public final Lpf4;
.super Ljb2;
.source "SourceFile"


# static fields
.field public static final f:Lpf4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpf4;

    invoke-direct {v0}, Lpf4;-><init>()V

    sput-object v0, Lpf4;->f:Lpf4;

    const-string v0, "getDictOptUrl"

    sput-object v0, Lpf4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljb2;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lpf4;->g:Ljava/lang/String;

    return-object p0
.end method
