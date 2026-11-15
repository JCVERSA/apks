.class public final Lle4;
.super Lmh;
.source "SourceFile"


# static fields
.field public static final g:Lle4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lle4;

    invoke-direct {v0}, Lle4;-><init>()V

    sput-object v0, Lle4;->g:Lle4;

    const-string v0, "getArrayOptUrl"

    sput-object v0, Lle4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lle4;->h:Ljava/lang/String;

    return-object p0
.end method
