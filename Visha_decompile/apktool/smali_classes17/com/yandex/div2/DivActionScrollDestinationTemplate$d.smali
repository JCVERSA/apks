.class public final Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;
.super Lcom/yandex/div2/DivActionScrollDestinationTemplate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionScrollDestinationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final c:Lcom/yandex/div2/OffsetDestinationTemplate;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/OffsetDestinationTemplate;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div2/DivActionScrollDestinationTemplate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;->c:Lcom/yandex/div2/OffsetDestinationTemplate;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/div2/OffsetDestinationTemplate;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivActionScrollDestinationTemplate$d;->c:Lcom/yandex/div2/OffsetDestinationTemplate;

    return-object p0
.end method
