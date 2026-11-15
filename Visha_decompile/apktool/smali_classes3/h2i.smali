.class public final Lh2i;
.super Lg2i;
.source "SourceFile"


# static fields
.field public static final c:Li2i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2i;

    invoke-direct {v0}, Lh2i;-><init>()V

    sput-object v0, Lh2i;->c:Li2i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lg2i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
