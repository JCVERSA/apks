.class public Lcom/yandex/div/internal/widget/tabs/b$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->a:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->b:I

    iput p3, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->c:I

    iput-boolean p4, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->d:Z

    iput-boolean p5, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->e:Z

    iput-object p6, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->c:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->a:I

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->e:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/b$i;->d:Z

    return p0
.end method
