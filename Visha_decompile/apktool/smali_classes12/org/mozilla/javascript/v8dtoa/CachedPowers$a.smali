.class public Lorg/mozilla/javascript/v8dtoa/CachedPowers$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/v8dtoa/CachedPowers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:S

.field public c:S


# direct methods
.method public constructor <init>(JSS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$a;->a:J

    iput-short p3, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$a;->b:S

    iput-short p4, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$a;->c:S

    return-void
.end method
