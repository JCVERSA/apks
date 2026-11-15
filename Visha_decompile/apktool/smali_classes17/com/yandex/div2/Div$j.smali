.class public final Lcom/yandex/div2/Div$j;
.super Lcom/yandex/div2/Div;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/Div;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public final e:Lcom/yandex/div2/DivPager;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivPager;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div2/Div;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div2/Div$j;->e:Lcom/yandex/div2/DivPager;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/div2/DivPager;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/Div$j;->e:Lcom/yandex/div2/DivPager;

    return-object p0
.end method
