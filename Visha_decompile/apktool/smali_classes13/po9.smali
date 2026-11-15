.class public final synthetic Lpo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/ThemeData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iput-object p2, p0, Lpo9;->c:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpo9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget-object p0, p0, Lpo9;->c:Lcom/transsion/dbdata/beans/ThemeData;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V

    return-void
.end method
