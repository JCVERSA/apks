.class public interface abstract Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAccessibilityService(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
.end method

.method public abstract getInstalledAccessibilityServiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAccessibilityService(Landroid/content/ComponentName;I)Z
.end method
