.class public final Lnd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll84;


# static fields
.field public static final a:Lnd4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnd4;

    invoke-direct {v0}, Lnd4;-><init>()V

    sput-object v0, Lnd4;->a:Lnd4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 9

    const-string p0, "name"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "isEmpty"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lvg;->c:Lvg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lab2;->c:Lab2;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_1
    const-string p0, "getColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Log;->g:Log;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    sget-object v0, Lue4;->g:Lue4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_2
    const-string p0, "getArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lmg;->g:Lmg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    sget-object v0, Lxd4;->g:Lxd4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object p0

    :cond_a
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v0

    :cond_b
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_3
    const-string p0, "getBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lng;->g:Lng;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    :cond_c
    sget-object v0, Lqe4;->g:Lqe4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object p0

    :cond_e
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-object v0

    :cond_f
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_4
    const-string p0, "getString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lsg;->g:Lsg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    sget-object v0, Luh4;->g:Luh4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v0

    :cond_11
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object p0

    :cond_12
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-object v0

    :cond_13
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_5
    const-string p0, "getNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lrg;->g:Lrg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p0

    :cond_14
    sget-object v0, Ljg4;->g:Ljg4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v0

    :cond_15
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object p0

    :cond_16
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    return-object v0

    :cond_17
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_6
    const-string p0, "containsKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lxa2;->c:Lxa2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7
    const-string p0, "getDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lpg;->g:Lpg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    :cond_18
    sget-object v0, Lbf4;->g:Lbf4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v0

    :cond_19
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object p0

    :cond_1a
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_8
    const-string p0, "getUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Ltg;->g:Ltg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    :cond_1c
    sget-object v0, Lyh4;->g:Lyh4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v0

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object p0

    :cond_1e
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-object v0

    :cond_1f
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_9
    const-string p0, "getInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lqg;->g:Lqg;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    :cond_20
    sget-object v0, Luf4;->g:Luf4;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v0

    :cond_21
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object p0

    :cond_22
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return-object v0

    :cond_23
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_a
    const-string p0, "toString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sget-object p0, Lqh;->c:Lqh;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    :cond_24
    sget-object v0, Ldi0;->c:Ldi0;

    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v0

    :cond_25
    sget-object v2, Lq91;->c:Lq91;

    invoke-virtual {v2, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    return-object v2

    :cond_26
    sget-object v3, Llb2;->c:Llb2;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v4

    invoke-static {v4, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    return-object v3

    :cond_27
    sget-object v4, Lr25;->c:Lr25;

    invoke-virtual {v4, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    return-object v4

    :cond_28
    sget-object v5, Lz37;->c:Lz37;

    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v6

    invoke-static {v6, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    return-object v5

    :cond_29
    sget-object v6, Li0a;->c:Li0a;

    invoke-virtual {v6, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v7

    invoke-static {v7, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    return-object v6

    :cond_2a
    sget-object v7, Lajb;->c:Lajb;

    invoke-virtual {v7, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v8

    invoke-static {v8, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    return-object v7

    :cond_2b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v8

    invoke-static {v8, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    return-object p0

    :cond_2c
    invoke-virtual {v0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-object v0

    :cond_2d
    invoke-virtual {v2, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return-object v2

    :cond_2e
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return-object v3

    :cond_2f
    invoke-virtual {v4, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    return-object v4

    :cond_30
    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    return-object v5

    :cond_31
    invoke-virtual {v6, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return-object v6

    :cond_32
    invoke-virtual {v7, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    return-object v7

    :cond_33
    invoke-static {p1, p2}, Lo84;->c(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :cond_34
    :goto_0
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_a
        -0x4d7d42f8 -> :sswitch_9
        -0x4a7789c7 -> :sswitch_8
        -0x4818bd4 -> :sswitch_7
        0xc6607c0 -> :sswitch_6
        0x276ffe3f -> :sswitch_5
        0x2fec8307 -> :sswitch_4
        0x41a8a7f2 -> :sswitch_3
        0x742a18a3 -> :sswitch_2
        0x7444d5ad -> :sswitch_1
        0x7aab3243 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 12

    const-string p0, "name"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "getStringValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lxh4;->c:Lxh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string p0, "getMinutes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lhg4;->c:Lhg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string p0, "formatDateAsLocal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lk44;->c:Lk44;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3
    const-string p0, "getArrayOptColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lge4;->f:Lge4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    sget-object v3, Lhe4;->g:Lhe4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v3

    :cond_3
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_4
    const-string p0, "lastIndex"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lpz9;->c:Lpz9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5
    const-string p0, "setYear"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwe9;->c:Lwe9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6
    const-string p0, "getDictInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lgf4;->g:Lgf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7
    const-string p0, "getColorBlue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorBlueComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorBlueComponentGetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object p0

    :cond_4
    sget-object v3, Li91;->g:Li91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v3

    :cond_5
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v3

    :cond_7
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_8
    const-string p0, "getMonth"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lig4;->c:Lig4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_9
    const-string p0, "getHours"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lsf4;->c:Lsf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_a
    const-string p0, "getStoredStringValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lrh4;->c:Lrh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_b
    const-string p0, "getIntervalMinutes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lzf4;->c:Lzf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_c
    const-string p0, "encodeRegex"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/EncodeRegex;->c:Lcom/yandex/div/evaluable/function/EncodeRegex;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_d
    const-string p0, "getIntervalTotalMinutes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ldg4;->c:Ldg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_e
    const-string p0, "getBooleanFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lre4;->g:Lre4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_f
    const-string p0, "getIntervalHours"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lyf4;->c:Lyf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_10
    const-string p0, "setColorGreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorGreenComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorGreenComponentSetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return-object p0

    :cond_8
    sget-object v3, Ln91;->g:Ln91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    return-object v3

    :cond_9
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    return-object p0

    :cond_a
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v3

    :cond_b
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_11
    const-string p0, "setColorAlpha"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorAlphaComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorAlphaComponentSetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object p0

    :cond_c
    sget-object v3, Lh91;->g:Lh91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    return-object v3

    :cond_d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-object p0

    :cond_e
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-object v3

    :cond_f
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_12
    const-string p0, "getOptStringFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lbh4;->f:Lbh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_13
    const-string p0, "getNumberFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Llg4;->g:Llg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_14
    const-string p0, "nowLocal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ld37;->c:Ld37;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_15
    const-string p0, "getOptDictFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvg4;->g:Lvg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_16
    const-string p0, "getOptColorFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ltg4;->f:Ltg4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object p0

    :cond_10
    sget-object v3, Lug4;->f:Lug4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    return-object v3

    :cond_11
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    return-object p0

    :cond_12
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return-object v3

    :cond_13
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_17
    const-string p0, "encodeUri"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lkz9;->c:Lkz9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_18
    const-string p0, "trimLeft"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Laab;->c:Laab;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_19
    const-string p0, "getColorRed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorRedComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorRedComponentGetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object p0

    :cond_14
    sget-object v3, Lo91;->g:Lo91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    return-object v3

    :cond_15
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    return-object p0

    :cond_16
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    return-object v3

    :cond_17
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_1a
    const-string p0, "getIntegerFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvf4;->g:Lvf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_1b
    const-string p0, "setMonth"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lte9;->c:Lte9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_1c
    const-string p0, "setHours"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqe9;->c:Lqe9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_1d
    const-string p0, "setColorRed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorRedComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorRedComponentSetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-object p0

    :cond_18
    sget-object v3, Lp91;->g:Lp91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    return-object v3

    :cond_19
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    return-object p0

    :cond_1a
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v3

    :cond_1b
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_1e
    const-string p0, "getStringFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwh4;->g:Lwh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_1f
    const-string p0, "getOptBooleanFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqg4;->f:Lqg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_20
    const-string p0, "minInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lg25;->c:Lg25;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_21
    const-string p0, "getOptColorFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lrg4;->f:Lrg4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object p0

    :cond_1c
    sget-object v3, Lsg4;->g:Lsg4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    return-object v3

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return-object p0

    :cond_1e
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-object v3

    :cond_1f
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_22
    const-string p0, "getUrlValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lbi4;->c:Lbi4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return-object p0

    :cond_20
    sget-object v3, Lci4;->c:Lci4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    return-object v3

    :cond_21
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    return-object p0

    :cond_22
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return-object v3

    :cond_23
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_23
    const-string p0, "getOptDictFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwg4;->c:Lwg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_24
    const-string p0, "getNumberFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lkg4;->g:Lkg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_25
    const-string p0, "getColorValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lxe4;->c:Lxe4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return-object p0

    :cond_24
    sget-object v3, Lye4;->c:Lye4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    return-object v3

    :cond_25
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    return-object p0

    :cond_26
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return-object v3

    :cond_27
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_26
    const-string p0, "getColorGreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorGreenComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorGreenComponentGetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    return-object p0

    :cond_28
    sget-object v3, Lm91;->g:Lm91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    return-object v3

    :cond_29
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    return-object p0

    :cond_2a
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return-object v3

    :cond_2b
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_27
    const-string p0, "getStoredArrayValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ljh4;->e:Ljh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_28
    const-string p0, "getColorAlpha"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorAlphaComponentGetter;->g:Lcom/yandex/div/evaluable/function/ColorAlphaComponentGetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-object p0

    :cond_2c
    sget-object v3, Lg91;->g:Lg91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v3

    :cond_2d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    return-object p0

    :cond_2e
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return-object v3

    :cond_2f
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_29
    const-string p0, "getArrayFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lbe4;->g:Lbe4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_2a
    const-string p0, "getOptUrlFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lfh4;->f:Lfh4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    return-object p0

    :cond_30
    sget-object v3, Lgh4;->f:Lgh4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    return-object v3

    :cond_31
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    return-object p0

    :cond_32
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    return-object v3

    :cond_33
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_2b
    const-string p0, "getStoredUrlValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lsh4;->c:Lsh4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    return-object p0

    :cond_34
    sget-object v3, Lth4;->c:Lth4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    return-object v3

    :cond_35
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    return-object p0

    :cond_36
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return-object v3

    :cond_37
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_2c
    const-string p0, "getArrayOptInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lie4;->f:Lie4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_2d
    const-string p0, "getArrayUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Loe4;->g:Loe4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_2e
    const-string p0, "padStart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lsv7;->c:Lsv7;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    return-object p0

    :cond_38
    sget-object v3, Ltv7;->c:Ltv7;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    return-object v3

    :cond_39
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    return-object p0

    :cond_3a
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return-object v3

    :cond_3b
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_2f
    const-string p0, "getDictOptBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lif4;->f:Lif4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_30
    const-string p0, "setSeconds"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lve9;->c:Lve9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_31
    const-string p0, "getIntegerValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lxf4;->c:Lxf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_32
    const-string p0, "getMillis"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lgg4;->c:Lgg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_33
    const-string p0, "getOptUrlFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ldh4;->g:Ldh4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    return-object p0

    :cond_3c
    sget-object v3, Leh4;->f:Leh4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    return-object v3

    :cond_3d
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    return-object p0

    :cond_3e
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    return-object v3

    :cond_3f
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_34
    const-string p0, "getBooleanValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lte4;->c:Lte4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_35
    const-string p0, "substring"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ld0a;->c:Ld0a;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_36
    const-string p0, "decodeUri"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ljz9;->c:Ljz9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_37
    const-string p0, "getDictOptColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ljf4;->f:Ljf4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    return-object p0

    :cond_40
    sget-object v3, Lkf4;->f:Lkf4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    return-object v3

    :cond_41
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    return-object p0

    :cond_42
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    return-object v3

    :cond_43
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_38
    const-string p0, "setMillis"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lre9;->c:Lre9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_39
    const-string p0, "getDictOptString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lnf4;->f:Lnf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3a
    const-string p0, "toInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lci0;->c:Lci0;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    return-object p0

    :cond_44
    sget-object v3, Ly37;->c:Ly37;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    return-object v3

    :cond_45
    sget-object v5, Lg0a;->c:Lg0a;

    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v6

    invoke-static {v6, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    return-object v5

    :cond_46
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v6

    invoke-static {v6, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    return-object p0

    :cond_47
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    return-object v3

    :cond_48
    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    return-object v5

    :cond_49
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_3b
    const-string p0, "getArrayBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lyd4;->g:Lyd4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3c
    const-string p0, "getDictOptNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lmf4;->f:Lmf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3d
    const-string p0, "getOptArrayFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lng4;->f:Lng4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3e
    const-string p0, "formatDateAsLocalWithLocale"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ll44;->c:Ll44;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_3f
    const-string p0, "toUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lj0a;->c:Lj0a;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_40
    const-string p0, "round"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lmx2;->c:Lmx2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_41
    const-string p0, "index"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lnz9;->c:Lnz9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_42
    const-string p0, "floor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lex2;->c:Lex2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_43
    const-string p0, "getNumberValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lmg4;->c:Lmg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_44
    const-string p0, "getArrayString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lne4;->g:Lne4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_45
    const-string p0, "getDictBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcf4;->g:Lcf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_46
    const-string p0, "minNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ljx2;->c:Ljx2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_47
    const-string p0, "trim"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ly9b;->c:Ly9b;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_48
    const-string p0, "ceil"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lyw2;->c:Lyw2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_49
    const-string p0, "asin"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvi;->c:Lvi;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_4a
    const-string p0, "argb"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ll81;->c:Ll81;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_4b
    const-string p0, "sum"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqx2;->c:Lqx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    return-object p0

    :cond_4a
    sget-object v3, Lo25;->c:Lo25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    return-object v3

    :cond_4b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    return-object p0

    :cond_4c
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return-object v3

    :cond_4d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_4c
    const-string p0, "sub"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lpx2;->c:Lpx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    return-object p0

    :cond_4e
    sget-object v3, Ln25;->c:Ln25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    return-object v3

    :cond_4f
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    return-object p0

    :cond_50
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    return-object v3

    :cond_51
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_4d
    const-string p0, "sin"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwm9;->c:Lwm9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_4e
    const-string p0, "rgb"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lf91;->c:Lf91;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_4f
    const-string p0, "mul"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Llx2;->c:Llx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    return-object p0

    :cond_52
    sget-object v3, Li25;->c:Li25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    return-object v3

    :cond_53
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    return-object p0

    :cond_54
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    return-object v3

    :cond_55
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_50
    const-string p0, "mod"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lkx2;->c:Lkx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    return-object p0

    :cond_56
    sget-object v3, Lh25;->c:Lh25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    return-object v3

    :cond_57
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    return-object p0

    :cond_58
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_59

    return-object v3

    :cond_59
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_51
    const-string p0, "min"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lix2;->c:Lix2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    return-object p0

    :cond_5a
    sget-object v3, Lf25;->c:Lf25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    return-object v3

    :cond_5b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    return-object p0

    :cond_5c
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5d

    return-object v3

    :cond_5d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_52
    const-string p0, "max"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lgx2;->c:Lgx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    return-object p0

    :cond_5e
    sget-object v3, Ld25;->c:Ld25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    return-object v3

    :cond_5f
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    return-object p0

    :cond_60
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    return-object v3

    :cond_61
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_53
    const-string p0, "len"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lde4;->c:Lde4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    return-object p0

    :cond_62
    sget-object v3, Lqz9;->c:Lqz9;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    return-object v3

    :cond_63
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    return-object p0

    :cond_64
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    return-object v3

    :cond_65
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_54
    const-string p0, "div"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ldx2;->c:Ldx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    return-object p0

    :cond_66
    sget-object v3, La25;->c:La25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    return-object v3

    :cond_67
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    return-object p0

    :cond_68
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    return-object v3

    :cond_69
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_55
    const-string p0, "cos"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lpk1;->c:Lpk1;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_56
    const-string p0, "abs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvw2;->c:Lvw2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    return-object p0

    :cond_6a
    sget-object v3, Ly15;->c:Ly15;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    return-object v3

    :cond_6b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    return-object p0

    :cond_6c
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    return-object v3

    :cond_6d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_57
    const-string p0, "pi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lb18;->c:Lb18;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_58
    const-string p0, "getArrayOptUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lle4;->g:Lle4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    return-object p0

    :cond_6e
    sget-object v3, Lme4;->f:Lme4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    return-object v3

    :cond_6f
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    return-object p0

    :cond_70
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_71

    return-object v3

    :cond_71
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_59
    const-string p0, "getArrayNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lee4;->g:Lee4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5a
    const-string p0, "getYear"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ldi4;->c:Ldi4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5b
    const-string p0, "getStoredNumberValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqh4;->c:Lqh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5c
    const-string p0, "toDegrees"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lln8;->c:Lln8;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5d
    const-string p0, "getUrlFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lai4;->g:Lai4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5e
    const-string p0, "addMillis"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lg8;->c:Lg8;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_5f
    const-string p0, "getIntegerFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwf4;->g:Lwf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_60
    const-string p0, "setMinutes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lse9;->c:Lse9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_61
    const-string p0, "getOptNumberFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lah4;->f:Lah4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_62
    const-string p0, "getOptNumberFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lzg4;->f:Lzg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_63
    const-string p0, "toUpperCase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwoa;->c:Lwoa;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_64
    const-string p0, "getDictString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqf4;->g:Lqf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_65
    const-string p0, "trimRight"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcab;->c:Lcab;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_66
    const-string p0, "copySign"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcx2;->c:Lcx2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    return-object p0

    :cond_72
    sget-object v3, Lz15;->c:Lz15;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    return-object v3

    :cond_73
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    return-object p0

    :cond_74
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    return-object v3

    :cond_75
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_67
    const-string p0, "contains"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Liz9;->c:Liz9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_68
    const-string p0, "getDictOptUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lof4;->f:Lof4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    return-object p0

    :cond_76
    sget-object v3, Lpf4;->f:Lpf4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    return-object v3

    :cond_77
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    return-object p0

    :cond_78
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    return-object v3

    :cond_79
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_69
    const-string p0, "getDictNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lhf4;->g:Lhf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6a
    const-string p0, "getStoredDictValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Loh4;->e:Loh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6b
    const-string p0, "getOptStringFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lch4;->f:Lch4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6c
    const-string p0, "toRadians"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Li72;->c:Li72;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6d
    const-string p0, "getStoredIntegerValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lph4;->c:Lph4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6e
    const-string p0, "getDictFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lff4;->g:Lff4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_6f
    const-string p0, "maxNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lhx2;->c:Lhx2;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_70
    const-string p0, "getDayOfWeek"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Laf4;->c:Laf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_71
    const-string p0, "getStoredBooleanValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lkh4;->c:Lkh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_72
    const-string p0, "setColorBlue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;->g:Lcom/yandex/div/evaluable/function/ColorBlueComponentSetter;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    return-object p0

    :cond_7a
    sget-object v3, Lj91;->g:Lj91;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    return-object v3

    :cond_7b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    return-object p0

    :cond_7c
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    return-object v3

    :cond_7d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_73
    const-string p0, "getDictFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lef4;->g:Lef4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_74
    const-string p0, "getStoredColorValue"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Llh4;->c:Llh4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    return-object p0

    :cond_7e
    sget-object v3, Lmh4;->c:Lmh4;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    return-object v3

    :cond_7f
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    return-object p0

    :cond_80
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    return-object v3

    :cond_81
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_75
    const-string p0, "getColorFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lwe4;->g:Lwe4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_76
    const-string p0, "signum"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lox2;->c:Lox2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    return-object p0

    :cond_82
    sget-object v3, Lm25;->c:Lm25;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    return-object v3

    :cond_83
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    return-object p0

    :cond_84
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_85

    return-object v3

    :cond_85
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_77
    const-string p0, "setDay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lpe9;->c:Lpe9;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_78
    const-string p0, "getArrayOptString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lke4;->f:Lke4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_79
    const-string p0, "getOptArrayFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Log4;->c:Log4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7a
    const-string p0, "padEnd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqv7;->c:Lqv7;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    return-object p0

    :cond_86
    sget-object v3, Lrv7;->c:Lrv7;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    return-object v3

    :cond_87
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    return-object p0

    :cond_88
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    return-object v3

    :cond_89
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_7b
    const-string p0, "getDictColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ldf4;->g:Ldf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7c
    const-string p0, "getColorFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lve4;->g:Lve4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7d
    const-string p0, "getArrayOptNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lje4;->f:Lje4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7e
    const-string p0, "parseUnixTime"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Luw7;->c:Luw7;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_7f
    const-string p0, "getArrayOptBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lfe4;->f:Lfe4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_80
    const-string p0, "getUrlFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lzh4;->g:Lzh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_81
    const-string p0, "formatDateAsUTC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lm44;->c:Lm44;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_82
    const-string p0, "toLowerCase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvoa;->c:Lvoa;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_83
    const-string p0, "parseUnixTimeAsLocal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvw7;->c:Lvw7;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_84
    const-string p0, "maxInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Le25;->c:Le25;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_85
    const-string p0, "getIntervalTotalDays"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lbg4;->c:Lbg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_86
    const-string p0, "toColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lf0a;->c:Lf0a;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_87
    const-string p0, "testRegex"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Luga;->c:Luga;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_88
    const-string p0, "getStringFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lvh4;->g:Lvh4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_89
    const-string p0, "replaceAll"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, La0a;->c:La0a;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8a
    const-string p0, "getDay"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lze4;->c:Lze4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8b
    const-string p0, "getSeconds"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lih4;->c:Lih4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8c
    const-string p0, "getIntervalSeconds"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lag4;->c:Lag4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8d
    const-string p0, "getIntervalTotalSeconds"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Leg4;->c:Leg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8e
    const-string p0, "getArrayColor"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lzd4;->g:Lzd4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_8f
    const-string p0, "getOptBooleanFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lpg4;->f:Lpg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_90
    const-string p0, "getOptIntegerFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lyg4;->f:Lyg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_91
    const-string p0, "toBoolean"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lp25;->c:Lp25;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    return-object p0

    :cond_8a
    sget-object v3, Le0a;->c:Le0a;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    return-object v3

    :cond_8b
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    return-object p0

    :cond_8c
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8d

    return-object v3

    :cond_8d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_92
    const-string p0, "getDictUrl"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lrf4;->g:Lrf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_93
    const-string p0, "getBooleanFromDict"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lse4;->g:Lse4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_94
    const-string p0, "getDictOptInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Llf4;->f:Llf4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_95
    const-string p0, "toString"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lqh;->c:Lqh;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    return-object p0

    :cond_8e
    sget-object v3, Ldi0;->c:Ldi0;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    return-object v3

    :cond_8f
    sget-object v5, Lq91;->c:Lq91;

    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v6

    invoke-static {v6, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    return-object v5

    :cond_90
    sget-object v6, Llb2;->c:Llb2;

    invoke-virtual {v6, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v7

    invoke-static {v7, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    return-object v6

    :cond_91
    sget-object v7, Lr25;->c:Lr25;

    invoke-virtual {v7, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v8

    invoke-static {v8, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    return-object v7

    :cond_92
    sget-object v8, Lz37;->c:Lz37;

    invoke-virtual {v8, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v9

    invoke-static {v9, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_93

    return-object v8

    :cond_93
    sget-object v9, Li0a;->c:Li0a;

    invoke-virtual {v9, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v10

    invoke-static {v10, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    return-object v9

    :cond_94
    sget-object v10, Lajb;->c:Lajb;

    invoke-virtual {v10, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v11

    invoke-static {v11, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    return-object v10

    :cond_95
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v11

    invoke-static {v11, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    return-object p0

    :cond_96
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_97

    return-object v3

    :cond_97
    invoke-virtual {v5, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_98

    return-object v5

    :cond_98
    invoke-virtual {v6, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_99

    return-object v6

    :cond_99
    invoke-virtual {v7, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9a

    return-object v7

    :cond_9a
    invoke-virtual {v8, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9b

    return-object v8

    :cond_9b
    invoke-virtual {v9, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9c

    return-object v9

    :cond_9c
    invoke-virtual {v10, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    return-object v10

    :cond_9d
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_96
    const-string p0, "getIntervalTotalWeeks"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lfg4;->c:Lfg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_97
    const-string p0, "getIntervalTotalHours"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcg4;->c:Lcg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_98
    const-string p0, "toNumber"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lq25;->c:Lq25;

    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v3

    sget-object v4, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    return-object p0

    :cond_9e
    sget-object v3, Lh0a;->c:Lh0a;

    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    return-object v3

    :cond_9f
    invoke-virtual {p0, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    return-object p0

    :cond_a0
    invoke-virtual {v3, p2}, Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a1

    return-object v3

    :cond_a1
    invoke-static {p1, p2, v1, v0, v2}, Lo84;->b(Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :sswitch_99
    const-string p0, "getOptIntegerFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lxg4;->f:Lxg4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_9a
    const-string p0, "formatDateAsUTCWithLocale"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Ln44;->c:Ln44;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_9b
    const-string p0, "getArrayFromArray"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lae4;->g:Lae4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :sswitch_9c
    const-string p0, "getArrayInteger"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lce4;->g:Lce4;

    invoke-static {p0, p2}, Lo84;->d(Lcom/yandex/div/evaluable/Function;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    return-object p0

    :cond_a2
    :goto_0
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown function name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, v2, p2, v2}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7ee76ce5 -> :sswitch_9c
        -0x7cf24c94 -> :sswitch_9b
        -0x78259e93 -> :sswitch_9a
        -0x73112d32 -> :sswitch_99
        -0x7266325c -> :sswitch_98
        -0x6eb2e93a -> :sswitch_97
        -0x6de4514a -> :sswitch_96
        -0x69e9ad94 -> :sswitch_95
        -0x6722eba9 -> :sswitch_94
        -0x5f9a536e -> :sswitch_93
        -0x5f6da65d -> :sswitch_92
        -0x5f473ad3 -> :sswitch_91
        -0x5e8bb75f -> :sswitch_90
        -0x5c0e70dc -> :sswitch_8f
        -0x5b90eb80 -> :sswitch_8e
        -0x59c8778a -> :sswitch_8d
        -0x5599283c -> :sswitch_8c
        -0x4cc579b7 -> :sswitch_8b
        -0x4a77cb9a -> :sswitch_8a
        -0x497f1db3 -> :sswitch_89
        -0x48ed4678 -> :sswitch_88
        -0x4715392b -> :sswitch_87
        -0x465efa58 -> :sswitch_86
        -0x45a4b240 -> :sswitch_85
        -0x4551a4c6 -> :sswitch_84
        -0x446dcf0f -> :sswitch_83
        -0x43ce226a -> :sswitch_82
        -0x43889d33 -> :sswitch_81
        -0x436fc16a -> :sswitch_80
        -0x403f4508 -> :sswitch_7f
        -0x3fe747b8 -> :sswitch_7e
        -0x3fd98d87 -> :sswitch_7d
        -0x3c69fe5e -> :sswitch_7c
        -0x3b9c7969 -> :sswitch_7b
        -0x3b5bccb8 -> :sswitch_7a
        -0x39633c84 -> :sswitch_79
        -0x375d08bf -> :sswitch_78
        -0x35fda426 -> :sswitch_77
        -0x35ca8eeb -> :sswitch_76
        -0x337e10b3 -> :sswitch_75
        -0x311bf0b9 -> :sswitch_74
        -0x2f42bdfd -> :sswitch_73
        -0x2e3463e5 -> :sswitch_72
        -0x2d1ff49e -> :sswitch_71
        -0x2c1de58f -> :sswitch_70
        -0x2ae12e33 -> :sswitch_6f
        -0x2acf6134 -> :sswitch_6e
        -0x2a6a4bf4 -> :sswitch_6d
        -0x2963cc89 -> :sswitch_6c
        -0x25fc5d72 -> :sswitch_6b
        -0x254a533e -> :sswitch_6a
        -0x24d8956b -> :sswitch_69
        -0x236732f8 -> :sswitch_68
        -0x21d289e1 -> :sswitch_67
        -0x1e28c12e -> :sswitch_66
        -0x1d945ce6 -> :sswitch_65
        -0x1c5c10a3 -> :sswitch_64
        -0x17d0ad49 -> :sswitch_63
        -0x146da5b7 -> :sswitch_62
        -0x112b9a3a -> :sswitch_61
        -0xf4859e3 -> :sswitch_60
        -0xdc3b458 -> :sswitch_5f
        -0xacdbdb9 -> :sswitch_5e
        -0xa6dbc27 -> :sswitch_5d
        -0x6f93bd4 -> :sswitch_5c
        -0x58a1cb1 -> :sswitch_5b
        -0x4780f4d -> :sswitch_5a
        -0x3726634 -> :sswitch_59
        -0x20103c1 -> :sswitch_58
        0xdf9 -> :sswitch_57
        0x17872 -> :sswitch_56
        0x18187 -> :sswitch_55
        0x18491 -> :sswitch_54
        0x1a215 -> :sswitch_53
        0x1a564 -> :sswitch_52
        0x1a652 -> :sswitch_51
        0x1a702 -> :sswitch_50
        0x1a7c4 -> :sswitch_4f
        0x1b8cd -> :sswitch_4e
        0x1bcd8 -> :sswitch_4d
        0x1be40 -> :sswitch_4c
        0x1be4b -> :sswitch_4b
        0x2dd0cc -> :sswitch_4a
        0x2dd4d7 -> :sswitch_49
        0x2e8905 -> :sswitch_48
        0x367422 -> :sswitch_47
        0x329e83b -> :sswitch_46
        0x4dec65c -> :sswitch_45
        0x50a1e94 -> :sswitch_44
        0x549b272 -> :sswitch_43
        0x5d0240c -> :sswitch_42
        0x5fb28d2 -> :sswitch_41
        0x67ab18e -> :sswitch_40
        0x69668f4 -> :sswitch_3f
        0xacc5c34 -> :sswitch_3e
        0xcd5b353 -> :sswitch_3d
        0xdd60110 -> :sswitch_3c
        0x103e7e05 -> :sswitch_3b
        0x1192da43 -> :sswitch_3a
        0x165285d8 -> :sswitch_39
        0x1846f148 -> :sswitch_38
        0x189ab4bc -> :sswitch_37
        0x1eb54c9e -> :sswitch_36
        0x1f9f6e51 -> :sswitch_35
        0x2286209f -> :sswitch_34
        0x24550c3d -> :sswitch_33
        0x2511bd3c -> :sswitch_32
        0x253bc949 -> :sswitch_31
        0x26abd3bd -> :sswitch_30
        0x2802ff41 -> :sswitch_2f
        0x2d2c878f -> :sswitch_2e
        0x2eca4dcc -> :sswitch_2d
        0x309ad00e -> :sswitch_2c
        0x31aaeafb -> :sswitch_2b
        0x32b9a552 -> :sswitch_2a
        0x35c7dc43 -> :sswitch_29
        0x39756fb1 -> :sswitch_28
        0x39c03611 -> :sswitch_27
        0x39cc8d56 -> :sswitch_26
        0x3a984fc4 -> :sswitch_25
        0x3c5a5d50 -> :sswitch_24
        0x3cf56c73 -> :sswitch_23
        0x417f26b8 -> :sswitch_22
        0x4d5e0189 -> :sswitch_21
        0x4e06128c -> :sswitch_20
        0x4f9da98b -> :sswitch_1f
        0x503ba2a7 -> :sswitch_1e
        0x511750b0 -> :sswitch_1d
        0x531987cd -> :sswitch_1c
        0x535fe33e -> :sswitch_1b
        0x552730a7 -> :sswitch_1a
        0x565eefa4 -> :sswitch_19
        0x59dfa749 -> :sswitch_18
        0x59e44f76 -> :sswitch_17
        0x5d56d686 -> :sswitch_16
        0x6192293c -> :sswitch_15
        0x62089a35 -> :sswitch_14
        0x650c65df -> :sswitch_13
        0x664ab681 -> :sswitch_12
        0x6799bdbd -> :sswitch_11
        0x67f0db62 -> :sswitch_10
        0x6803e194 -> :sswitch_f
        0x6c29ecfd -> :sswitch_e
        0x70435ad6 -> :sswitch_d
        0x71de1fd1 -> :sswitch_c
        0x7472aa24 -> :sswitch_b
        0x74751b87 -> :sswitch_a
        0x748b6d59 -> :sswitch_9
        0x74d1c8ca -> :sswitch_8
        0x7577dba7 -> :sswitch_7
        0x75b8db72 -> :sswitch_6
        0x7652b7bf -> :sswitch_5
        0x76c7d3dc -> :sswitch_4
        0x7931f233 -> :sswitch_3
        0x7bb7da54 -> :sswitch_2
        0x7d4658a9 -> :sswitch_1
        0x7f48eaaa -> :sswitch_0
    .end sparse-switch
.end method
