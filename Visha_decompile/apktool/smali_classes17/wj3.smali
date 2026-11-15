.class public final synthetic Lwj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy9;


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/expression/a;

.field public final synthetic b:Lwc3;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/expression/a;Lwc3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj3;->a:Lcom/yandex/div/core/expression/a;

    iput-object p2, p0, Lwj3;->b:Lwc3;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwj3;->a:Lcom/yandex/div/core/expression/a;

    iget-object p0, p0, Lwj3;->b:Lwc3;

    invoke-static {v0, p0, p1}, Lcom/yandex/div/core/expression/a;->a(Lcom/yandex/div/core/expression/a;Lwc3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
