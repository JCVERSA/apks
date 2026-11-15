.class public final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->o(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->p(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
