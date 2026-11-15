.class public final synthetic Lvnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

.field public final synthetic e:Le74;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvnb;->b:Ljava/util/List;

    iput-object p2, p0, Lvnb;->c:Ljava/util/List;

    iput-object p3, p0, Lvnb;->d:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    iput-object p4, p0, Lvnb;->e:Le74;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lvnb;->b:Ljava/util/List;

    iget-object v1, p0, Lvnb;->c:Ljava/util/List;

    iget-object v2, p0, Lvnb;->d:Lcom/yandex/div/core/expression/variables/VariableControllerImpl;

    iget-object p0, p0, Lvnb;->e:Le74;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/div/core/expression/variables/VariableControllerImpl;->m(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/expression/variables/VariableControllerImpl;Le74;)V

    return-void
.end method
