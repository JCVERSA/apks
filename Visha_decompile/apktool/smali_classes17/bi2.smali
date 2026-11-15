.class public interface abstract Lbi2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbi2$b;
    }
.end annotation


# static fields
.field public static final a:Lbi2$b;

.field public static final b:Lbi2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbi2$b;->a:Lbi2$b;

    sput-object v0, Lbi2;->a:Lbi2$b;

    new-instance v0, Lbi2$a;

    invoke-direct {v0}, Lbi2$a;-><init>()V

    sput-object v0, Lbi2;->b:Lbi2;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;)V
.end method

.method public abstract b(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivData;)V
.end method
