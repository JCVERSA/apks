.class public Lw37;
.super Lrd0;
.source "SourceFile"

# interfaces
.implements Lhga;


# static fields
.field public static final h:Lfq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv37;

    invoke-direct {v0}, Lv37;-><init>()V

    sput-object v0, Lw37;->h:Lfq6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lrd0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method
