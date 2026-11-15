.class public final Lai4;
.super Lxib;
.source "SourceFile"


# static fields
.field public static final g:Lai4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lai4;

    invoke-direct {v0}, Lai4;-><init>()V

    sput-object v0, Lai4;->g:Lai4;

    const-string v0, "getUrlFromDict"

    sput-object v0, Lai4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxib;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lai4;->h:Ljava/lang/String;

    return-object p0
.end method
