.class public final Lgh4;
.super Ljb2;
.source "SourceFile"


# static fields
.field public static final f:Lgh4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgh4;

    invoke-direct {v0}, Lgh4;-><init>()V

    sput-object v0, Lgh4;->f:Lgh4;

    const-string v0, "getOptUrlFromDict"

    sput-object v0, Lgh4;->g:Ljava/lang/String;

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

    sget-object p0, Lgh4;->g:Ljava/lang/String;

    return-object p0
.end method
