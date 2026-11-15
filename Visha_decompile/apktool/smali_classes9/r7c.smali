.class public final synthetic Lr7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr7c;->b:I

    iput p2, p0, Lr7c;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr7c;->b:I

    iget p0, p0, Lr7c;->c:I

    check-cast p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->c(IILcom/transsion/magicvideo/model/VideoSubtitleViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
