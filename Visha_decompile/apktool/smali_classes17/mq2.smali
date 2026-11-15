.class public interface abstract Lmq2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmq2$b;
    }
.end annotation


# static fields
.field public static final a:Lmq2$b;

.field public static final b:Lmq2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmq2$b;->a:Lmq2$b;

    sput-object v0, Lmq2;->a:Lmq2$b;

    new-instance v0, Lmq2$a;

    invoke-direct {v0}, Lmq2$a;-><init>()V

    sput-object v0, Lmq2;->b:Lmq2;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/div/core/view2/Div2View;)V
.end method
