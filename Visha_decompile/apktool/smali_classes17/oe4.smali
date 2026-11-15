.class public final Loe4;
.super Lrh;
.source "SourceFile"


# static fields
.field public static final g:Loe4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loe4;

    invoke-direct {v0}, Loe4;-><init>()V

    sput-object v0, Loe4;->g:Loe4;

    const-string v0, "getArrayUrl"

    sput-object v0, Loe4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Loe4;->h:Ljava/lang/String;

    return-object p0
.end method
