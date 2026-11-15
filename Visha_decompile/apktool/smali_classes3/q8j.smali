.class public final Lq8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoi;


# static fields
.field public static final a:Lcoi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq8j;

    invoke-direct {v0}, Lq8j;-><init>()V

    sput-object v0, Lq8j;->a:Lcoi;

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

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
