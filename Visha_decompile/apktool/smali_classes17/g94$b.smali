.class public final Lg94$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lg94$b;->a(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
