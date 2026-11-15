.class public final Ljxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljxa;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljxa;

    invoke-direct {v0}, Ljxa;-><init>()V

    sput-object v0, Ljxa;->a:Ljxa;

    const-string v0, "ExTranslate"

    sput-object v0, Ljxa;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final b(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljxa;->b:Ljava/lang/String;

    const-string v1, "origin:"

    invoke-static {v1, p1}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxa;->a(Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_5

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    const/16 v0, -0xd3

    if-eq p0, v0, :cond_3

    const/16 v0, -0xd2

    if-eq p0, v0, :cond_2

    const/16 v0, -0x65

    if-eq p0, v0, :cond_1

    const/16 v0, -0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must call configure method first to supply SDK authorization code!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, p0

    goto/16 :goto_1

    :pswitch_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "SDK authorization code invalid!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "id not match!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "time over!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "License changed!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "specified key type not correct!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "specified key not exist!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "specified key already exists!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "illegal use to persist storage!! you must remove previous one before reuse it"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "incorrect size of aad[${Byte.MIN_VALUE} - ${Byte.MAX_VALUE}"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect argument size!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect argument type!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "illegal access due to password error!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "illegal access to persist storage!"

    invoke-direct {p0, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "something went wrong!!"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch -0x130
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xcc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
