.class public final synthetic Ls7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7c;->b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput p2, p0, Ls7c;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls7c;->b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget p0, p0, Ls7c;->c:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->g(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
