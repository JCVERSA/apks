.class public abstract Lbob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbob$a;
    }
.end annotation


# static fields
.field public static final a:Lbob$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbob;->a:Lbob$a;

    return-void
.end method

.method public static final a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;
    .locals 1

    sget-object v0, Lbob;->a:Lbob$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lbob$a;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;

    move-result-object p0

    return-object p0
.end method
