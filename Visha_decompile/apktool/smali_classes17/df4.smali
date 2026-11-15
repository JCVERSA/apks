.class public final Ldf4;
.super Lr81;
.source "SourceFile"


# static fields
.field public static final g:Ldf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldf4;

    invoke-direct {v0}, Ldf4;-><init>()V

    sput-object v0, Ldf4;->g:Ldf4;

    const-string v0, "getDictColor"

    sput-object v0, Ldf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr81;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Ldf4;->h:Ljava/lang/String;

    return-object p0
.end method
