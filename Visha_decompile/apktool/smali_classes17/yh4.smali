.class public final Lyh4;
.super Lxib;
.source "SourceFile"


# static fields
.field public static final g:Lyh4;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyh4;

    invoke-direct {v0}, Lyh4;-><init>()V

    sput-object v0, Lyh4;->g:Lyh4;

    const-string v0, "getUrl"

    sput-object v0, Lyh4;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyh4;->i:Z

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

    sget-object p0, Lyh4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Lyh4;->i:Z

    return p0
.end method
