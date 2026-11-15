.class public final Lcom/yandex/div/core/view2/spannable/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/spannable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/yandex/div/core/view2/spannable/a$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/core/view2/spannable/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/view2/spannable/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div/core/view2/spannable/a$a;->c:Lcom/yandex/div/core/view2/spannable/a$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/yandex/div/core/view2/spannable/a$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a$a;->c:Lcom/yandex/div/core/view2/spannable/a$b;

    return-object p0
.end method
