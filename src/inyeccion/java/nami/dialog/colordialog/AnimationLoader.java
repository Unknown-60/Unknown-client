package nami.dialog.colordialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

public class AnimationLoader {
    public AnimationLoader() {
        AnimationLoader animationLoader = this;
    }

    public static AnimationSet getInAnimation(Context context) {
        AnimationSet animationSet = r18;
        AnimationSet animationSet2 = new AnimationSet(context, (AttributeSet) null);
        AnimationSet animationSet3 = animationSet;
        Animation animation = r18;
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        Animation animation2 = animation;
        animation2.setDuration((long) 90);
        animation = r18;
        alphaAnimation = new ScaleAnimation(0.8f, 1.05f, 0.8f, 1.05f, 1, 0.5f, 1, 0.5f);
        Animation animation3 = animation;
        animation3.setDuration((long) 135);
        animation = r18;
        alphaAnimation = new ScaleAnimation(1.05f, 0.95f, 1.05f, 0.95f, 1, 0.5f, 1, 0.5f);
        Animation animation4 = animation;
        animation4.setDuration((long) 105);
        animation4.setStartOffset((long) 135);
        animation = r18;
        alphaAnimation = new ScaleAnimation(0.95f, 1.0f, 0.95f, 1.0f, 1, 0.5f, 1, 0.5f);
        Animation animation5 = animation;
        animation5.setDuration((long) 60);
        animation5.setStartOffset((long) 240);
        animationSet3.addAnimation(animation2);
        animationSet3.addAnimation(animation3);
        animationSet3.addAnimation(animation4);
        animationSet3.addAnimation(animation5);
        return animationSet3;
    }

    public static AnimationSet getOutAnimation(Context context) {
        AnimationSet animationSet = r16;
        AnimationSet animationSet2 = new AnimationSet(context, (AttributeSet) null);
        AnimationSet animationSet3 = animationSet;
        Animation animation = r16;
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        Animation animation2 = animation;
        animation2.setDuration((long) 150);
        animation = r16;
        alphaAnimation = new ScaleAnimation(1.0f, 0.6f, 1.0f, 0.6f, 1, 0.5f, 1, 0.5f);
        Animation animation3 = animation;
        animation3.setDuration((long) 150);
        animationSet3.addAnimation(animation2);
        animationSet3.addAnimation(animation3);
        return animationSet3;
    }
}
