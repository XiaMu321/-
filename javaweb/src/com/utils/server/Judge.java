package com.utils.server;

import java.util.ArrayList;
import java.util.List;

public class Judge {
    //判断正误0为真1为假
    public int[] Judge(String[] inputs, String[] answers) {

        int max = Math.max(inputs.length, answers.length);

        int[] right = new int[max];

        for (int i = 0; i < max; i++) {
            right[i] = 0;
        }

        for (int i = 0; i < max; i++) {
            if (inputs[i].equals(answers[i])) {
                right[i] = 1;
            }
        }
        return right;
    }
}