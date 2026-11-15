.class public final Lbbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public synthetic constructor <init>(Lcbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 1

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v0

    iput v0, p0, Lbbe;->a:I

    invoke-virtual {p1}, Lu4h;->C()I

    move-result p1

    iput p1, p0, Lbbe;->b:I

    return-void
.end method
