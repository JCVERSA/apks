.class public Lfreemarker/core/b0$m;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljl0;-><init>()V

    iput p1, p0, Lfreemarker/core/b0$m;->k:I

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 3

    new-instance p2, Lam9;

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lfreemarker/core/b0;->b(Ljava/lang/Number;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget p0, p0, Lfreemarker/core/b0$m;->k:I

    invoke-direct {p2, v0, p0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object p2
.end method
