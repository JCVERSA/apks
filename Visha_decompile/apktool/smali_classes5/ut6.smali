.class public final synthetic Lut6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ltn$b;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ltn$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut6;->b:Landroid/content/Context;

    iput-object p2, p0, Lut6;->c:Ltn$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lut6;->b:Landroid/content/Context;

    iget-object p0, p0, Lut6;->c:Ltn$b;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/MusicHelper;->k(Landroid/content/Context;Ltn$b;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
