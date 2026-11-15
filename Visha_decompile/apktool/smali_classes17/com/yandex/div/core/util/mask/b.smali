.class public Lcom/yandex/div/core/util/mask/b;
.super Lcom/yandex/div/core/util/mask/BaseInputMask;
.source "SourceFile"


# instance fields
.field public final e:Le74;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/util/mask/BaseInputMask$b;Le74;)V
    .locals 1

    const-string v0, "initialMaskData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;-><init>(Lcom/yandex/div/core/util/mask/BaseInputMask$b;)V

    iput-object p2, p0, Lcom/yandex/div/core/util/mask/b;->e:Le74;

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/b;->e:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
