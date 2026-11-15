.class public final Lsh8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsh8$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lsh8$b;J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lsh8$b;->b(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final b(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1
.end method
