.class public final Lfe4;
.super Lfh;
.source "SourceFile"


# static fields
.field public static final f:Lfe4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfe4;

    invoke-direct {v0}, Lfe4;-><init>()V

    sput-object v0, Lfe4;->f:Lfe4;

    const-string v0, "getArrayOptBoolean"

    sput-object v0, Lfe4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lfe4;->g:Ljava/lang/String;

    return-object p0
.end method
