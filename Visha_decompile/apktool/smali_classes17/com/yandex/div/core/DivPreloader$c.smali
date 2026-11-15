.class public interface abstract Lcom/yandex/div/core/DivPreloader$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/DivPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/DivPreloader$c$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/core/DivPreloader$c$c;

.field public static final b:Lcom/yandex/div/core/DivPreloader$c;

.field public static final c:Lcom/yandex/div/core/DivPreloader$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/core/DivPreloader$c$c;->a:Lcom/yandex/div/core/DivPreloader$c$c;

    sput-object v0, Lcom/yandex/div/core/DivPreloader$c;->a:Lcom/yandex/div/core/DivPreloader$c$c;

    new-instance v0, Lcom/yandex/div/core/DivPreloader$c$a;

    invoke-direct {v0}, Lcom/yandex/div/core/DivPreloader$c$a;-><init>()V

    sput-object v0, Lcom/yandex/div/core/DivPreloader$c;->b:Lcom/yandex/div/core/DivPreloader$c;

    new-instance v0, Lcom/yandex/div/core/DivPreloader$c$b;

    invoke-direct {v0}, Lcom/yandex/div/core/DivPreloader$c$b;-><init>()V

    sput-object v0, Lcom/yandex/div/core/DivPreloader$c;->c:Lcom/yandex/div/core/DivPreloader$c;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/div2/DivBackground;Loj3;)Z
.end method

.method public abstract b(Lcom/yandex/div2/Div;Loj3;)Z
.end method
