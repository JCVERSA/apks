.class public interface abstract Loj3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loj3$b;
    }
.end annotation


# static fields
.field public static final a:Loj3$b;

.field public static final b:Loj3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Loj3$b;->a:Loj3$b;

    sput-object v0, Loj3;->a:Loj3$b;

    new-instance v0, Loj3$a;

    invoke-direct {v0}, Loj3$a;-><init>()V

    sput-object v0, Loj3;->b:Loj3;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/List;Lc74;)Lqc2;
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;Llx7;)Ljava/lang/Object;
.end method

.method public c(Lcom/yandex/div/json/ParsingException;)V
    .locals 0

    const-string p0, "e"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
