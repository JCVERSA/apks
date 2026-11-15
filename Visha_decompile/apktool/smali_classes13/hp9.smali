.class public final synthetic Lhp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhp9;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhp9;->b:Ljava/util/List;

    check-cast p1, Lcom/transsion/tools/model/SkinsViewModel;

    invoke-static {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->c(Ljava/util/List;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
