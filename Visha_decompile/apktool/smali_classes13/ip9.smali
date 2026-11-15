.class public final synthetic Lip9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/model/SkinsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/model/SkinsViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lip9;->b:Lcom/transsion/tools/model/SkinsViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lip9;->b:Lcom/transsion/tools/model/SkinsViewModel;

    check-cast p1, Lcom/transsion/tools/model/SkinsViewModel;

    invoke-static {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel;->b(Lcom/transsion/tools/model/SkinsViewModel;Lcom/transsion/tools/model/SkinsViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
