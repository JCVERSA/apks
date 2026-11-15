.class public final Lzoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lusi;


# static fields
.field public static final a:Lusi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzoe;

    invoke-direct {v0}, Lzoe;-><init>()V

    sput-object v0, Lzoe;->a:Lusi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lape;->a(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
