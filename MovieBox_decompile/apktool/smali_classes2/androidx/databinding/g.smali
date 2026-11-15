.class public abstract Landroidx/databinding/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Landroidx/databinding/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroidx/databinding/g;->b(Landroid/view/View;Landroidx/databinding/f;)Landroidx/databinding/ViewDataBinding;

    .line 3
    .line 4
    .line 5
    return-object v0
.end method

.method public static b(Landroid/view/View;Landroidx/databinding/f;)Landroidx/databinding/ViewDataBinding;
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/databinding/g;->c(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    sget-object v2, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroidx/databinding/e;->c(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p0, v1}, Landroidx/databinding/e;->b(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "View is not a binding layout. Tag: "

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p1, "View is not a binding layout"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static c(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->g(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method
