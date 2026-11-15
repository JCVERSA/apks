.class public final synthetic Lj7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn5;


# instance fields
.field public final synthetic a:Lcom/yandex/div/svg/SvgDivImageLoader;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lrk2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj7a;->a:Lcom/yandex/div/svg/SvgDivImageLoader;

    iput-object p2, p0, Lj7a;->b:Ljava/lang/String;

    iput-object p3, p0, Lj7a;->c:Lrk2;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lj7a;->a:Lcom/yandex/div/svg/SvgDivImageLoader;

    iget-object v1, p0, Lj7a;->b:Ljava/lang/String;

    iget-object p0, p0, Lj7a;->c:Lrk2;

    invoke-static {v0, v1, p0}, Lcom/yandex/div/svg/SvgDivImageLoader;->a(Lcom/yandex/div/svg/SvgDivImageLoader;Ljava/lang/String;Lrk2;)V

    return-void
.end method
