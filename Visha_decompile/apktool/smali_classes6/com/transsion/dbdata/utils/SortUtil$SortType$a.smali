.class public final Lcom/transsion/dbdata/utils/SortUtil$SortType$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/utils/SortUtil$SortType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/utils/SortUtil$SortType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/transsion/dbdata/utils/SortUtil$SortType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->COUNT:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DURATION:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->SIZE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NAME:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->DATE:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
