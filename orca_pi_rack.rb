live_loop :owOOoWOooOw do
  use_real_time
  sync "/osc/a"
  with_fx :reverb, room: 0.8 do
    if one_in 10
      with_fx :flanger, feedback: rand do
        with_fx :krush, res: rand do
          with_fx :echo, phase: rand, mix: [0,1].choose, decay: rand(4) do
            sample :ambi_dark_woosh, amp: 0.1, rate: rand(2..8) * [1,-1].choose, res: 0.9
            sleep [0.25,0.5,1].choose
          end
        end
      end
    else
      sample :loop_amen_full, amp: 0.3, rate: 1.5, beat_stretch: 8, num_slices: 32, slice: pick
    end
  end
end