.class public abstract Le4;
.super Lme8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/core/TrayStorage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lme8;-><init>(Lle8;I)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Le4;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1, p1}, Le4;->n(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/grandcentrix/tray/core/WrongTypeException;

    invoke-direct {p1, p0}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public j(Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Le4;->i(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method public k()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lme8;->c()Lle8;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lme8;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq9b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lq9b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/grandcentrix/tray/core/ItemNotFoundException;

    const-string v0, "Value for Key <%s> not found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/grandcentrix/tray/core/ItemNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Le4;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/grandcentrix/tray/core/ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public final n(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/grandcentrix/tray/core/WrongTypeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The value for key <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> is null. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "You obviously saved this value as String and try to access it with type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " which cannot be null. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Always use getString(key, defaultValue) when accessing data you saved with put(String)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/core/WrongTypeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerOnTrayPreferenceChangeListener(Lpf7;)V
    .locals 0
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme8;->c()Lle8;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/TrayStorage;->registerOnTrayPreferenceChangeListener(Lpf7;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le4;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterOnTrayPreferenceChangeListener(Lpf7;)V
    .locals 0
    .param p1    # Lpf7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lme8;->c()Lle8;

    move-result-object p0

    check-cast p0, Lnet/grandcentrix/tray/core/TrayStorage;

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/core/TrayStorage;->unregisterOnTrayPreferenceChangeListener(Lpf7;)V

    return-void
.end method
