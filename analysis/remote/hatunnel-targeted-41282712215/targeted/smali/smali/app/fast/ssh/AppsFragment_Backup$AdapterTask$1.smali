.class Lapp/fast/ssh/AppsFragment_Backup$AdapterTask$1;
.super Ljava/lang/Object;
.source "AppsFragment_Backup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lapp/fast/ssh/adapter/AppsAdapter$App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;


# direct methods
.method constructor <init>(Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask$1;->this$0:Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lapp/fast/ssh/adapter/AppsAdapter$App;Lapp/fast/ssh/adapter/AppsAdapter$App;)I
    .locals 0

    iget-object p1, p1, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    iget-object p2, p2, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lapp/fast/ssh/adapter/AppsAdapter$App;

    check-cast p2, Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-virtual {p0, p1, p2}, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask$1;->compare(Lapp/fast/ssh/adapter/AppsAdapter$App;Lapp/fast/ssh/adapter/AppsAdapter$App;)I

    move-result p1

    return p1
.end method
