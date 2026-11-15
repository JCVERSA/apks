.class public final Lqg;
.super Lug;
.source "SourceFile"


# static fields
.field public static final g:Lqg;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqg;

    invoke-direct {v0}, Lqg;-><init>()V

    sput-object v0, Lqg;->g:Lqg;

    const-string v0, "getInteger"

    sput-object v0, Lqg;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lqg;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lug;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lqg;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Lqg;->i:Z

    return p0
.end method
