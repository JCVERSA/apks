.class public final synthetic Ltnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltnb;->b:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    iput-object p2, p0, Ltnb;->c:Ljava/lang/String;

    iput-object p3, p0, Ltnb;->d:Le74;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Ltnb;->b:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    iget-object v1, p0, Ltnb;->c:Ljava/lang/String;

    iget-object p0, p0, Ltnb;->d:Le74;

    invoke-static {v0, v1, p0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->l(Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Ljava/lang/String;Le74;)V

    return-void
.end method
