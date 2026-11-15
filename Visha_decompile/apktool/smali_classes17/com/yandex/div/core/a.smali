.class public interface abstract Lcom/yandex/div/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/a$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/core/a$b;

.field public static final c:Lcom/yandex/div/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/core/a$b;->a:Lcom/yandex/div/core/a$b;

    sput-object v0, Lcom/yandex/div/core/a;->b:Lcom/yandex/div/core/a$b;

    new-instance v0, Lcom/yandex/div/core/a$a;

    invoke-direct {v0}, Lcom/yandex/div/core/a$a;-><init>()V

    sput-object v0, Lcom/yandex/div/core/a;->c:Lcom/yandex/div/core/a;

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V
.end method

.method public abstract createView(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;
.end method

.method public abstract isCustomTypeSupported(Ljava/lang/String;)Z
.end method

.method public preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    const-string p0, "div"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callBack"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div/core/DivPreloader$d;->a:Lcom/yandex/div/core/DivPreloader$d$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/DivPreloader$d$a;->c()Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p0

    return-object p0
.end method

.method public abstract release(Landroid/view/View;Lcom/yandex/div2/DivCustom;)V
.end method
