.class public final synthetic Lufg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lvfg;

.field public final synthetic b:D

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lvfg;DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lufg;->a:Lvfg;

    iput-wide p2, p0, Lufg;->b:D

    iput-boolean p4, p0, Lufg;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lufg;->a:Lvfg;

    iget-wide v1, p0, Lufg;->b:D

    iget-boolean p0, p0, Lufg;->c:Z

    check-cast p1, Lfme;

    invoke-static {v0, v1, v2, p0, p1}, Lvfg;->a(Lvfg;DZLfme;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
