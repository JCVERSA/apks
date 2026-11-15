.class public final Ley9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley9$a;
    }
.end annotation


# static fields
.field public static final a:Ley9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ley9;

    invoke-direct {v0}, Ley9;-><init>()V

    sput-object v0, Ley9;->a:Ley9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "set_stored_value"

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final e(Landroid/net/Uri;Lsv2;)Z
    .locals 7

    const-string v0, "uri"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/yandex/div/core/view2/Div2View;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div/core/view2/Div2View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Handler view is not instance of Div2View"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    sget-object v1, Ley9;->a:Ley9;

    const-string v2, "name"

    invoke-virtual {v1, p0, v2}, Ley9;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    const-string v3, "value"

    invoke-virtual {v1, p0, v3}, Ley9;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    const-string v4, "lifetime"

    invoke-virtual {v1, p0, v4}, Ley9;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lf1a;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "type"

    invoke-virtual {v1, p0, v6}, Ley9;->d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v6, Lcom/yandex/div/data/StoredValue$Type;->Converter:Lcom/yandex/div/data/StoredValue$Type$a;

    invoke-virtual {v6, p0}, Lcom/yandex/div/data/StoredValue$Type$a;->a(Ljava/lang/String;)Lcom/yandex/div/data/StoredValue$Type;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {v1, p0, v2, v3}, Ley9;->b(Lcom/yandex/div/data/StoredValue$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/StoredValue;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0, v4, v5, p1}, Ley9;->c(Lcom/yandex/div/data/StoredValue;JLcom/yandex/div/core/view2/Div2View;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored value \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' declaration failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_5
    return v0
.end method


# virtual methods
.method public final b(Lcom/yandex/div/data/StoredValue$Type;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/StoredValue;
    .locals 2

    sget-object v0, Ley9$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create stored value of type = \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, v1, p2, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/yandex/div/data/StoredValue$h;

    invoke-virtual {p0, p3}, Ley9;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0, v1}, Lcom/yandex/div/data/StoredValue$h;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/yandex/div/data/StoredValue$c;

    invoke-virtual {p0, p3}, Ley9;->g(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p2, p0, v1}, Lcom/yandex/div/data/StoredValue$c;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/yandex/div/data/StoredValue$e;

    invoke-virtual {p0, p3}, Ley9;->h(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/yandex/div/data/StoredValue$e;-><init>(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/yandex/div/data/StoredValue$b;

    invoke-virtual {p0, p3}, Ley9;->f(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/yandex/div/data/StoredValue$b;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/yandex/div/data/StoredValue$f;

    invoke-virtual {p0, p3}, Ley9;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/yandex/div/data/StoredValue$f;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/yandex/div/data/StoredValue$g;

    invoke-direct {p1, p2, p3}, Lcom/yandex/div/data/StoredValue$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/yandex/div/data/StoredValue;JLcom/yandex/div/core/view2/Div2View;)Z
    .locals 2

    const-string p0, "storedValue"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div2View"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->j()Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;

    move-result-object p0

    const-string v0, "div2View.div2Component.storedValuesController"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->a()Lxc3;

    move-result-object v0

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v1

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->g(Lcom/yandex/div/data/StoredValue;JLwc3;)Z

    move-result p0

    return p0
.end method

.method public final d(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The required parameter "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lj1a;->h1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ley9;->i(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lli1;->b(I)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to boolean"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final g(Ljava/lang/String;)I
    .locals 2

    sget-object p0, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lk81;->d(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong value format for color stored value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final i(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final j(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object p0, Lvib;->b:Lvib$a;

    invoke-virtual {p0, p1}, Lvib$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method
