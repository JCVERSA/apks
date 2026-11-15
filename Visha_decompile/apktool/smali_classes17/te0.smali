.class public final Lte0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lei2;

.field public final b:Lcom/yandex/div2/DivData;


# direct methods
.method public constructor <init>(Lei2;Lcom/yandex/div2/DivData;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte0;->a:Lei2;

    iput-object p2, p0, Lte0;->b:Lcom/yandex/div2/DivData;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div2/DivData;
    .locals 0

    iget-object p0, p0, Lte0;->b:Lcom/yandex/div2/DivData;

    return-object p0
.end method

.method public final b()Lei2;
    .locals 0

    iget-object p0, p0, Lte0;->a:Lei2;

    return-object p0
.end method
