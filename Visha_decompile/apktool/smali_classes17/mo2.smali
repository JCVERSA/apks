.class public interface abstract Lmo2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmo2$b;
    }
.end annotation


# static fields
.field public static final a:Lmo2$b;

.field public static final b:Lmo2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmo2$b;->a:Lmo2$b;

    sput-object v0, Lmo2;->a:Lmo2$b;

    new-instance v0, Lmo2$a;

    invoke-direct {v0}, Lmo2$a;-><init>()V

    sput-object v0, Lmo2;->b:Lmo2;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Lcom/yandex/div/core/DivPreloader$d;
.end method
