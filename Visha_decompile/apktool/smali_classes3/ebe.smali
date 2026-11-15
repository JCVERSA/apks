.class public final Lebe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzae;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lebe;->a:I

    iput p2, p0, Lebe;->b:I

    iput p3, p0, Lebe;->c:I

    return-void
.end method

.method public static a(Lu4h;)Lebe;
    .locals 5

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->C()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lu4h;->m(I)V

    new-instance p0, Lebe;

    invoke-direct {p0, v0, v1, v2, v3}, Lebe;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const p0, 0x68697661

    return p0
.end method
