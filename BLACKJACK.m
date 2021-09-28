classdef BLACKJACK < handle
    properties
        deck % row vector deck of cards (updated every time there's a card drawn)
        dealer_hand % nx1 vector of numerical values of dealer cards
        player_hand % nx1 vector of numerical values of player cards
    end
    methods
        function obj = BLACKJACK()
            %{
            obj.deck = ['AH'; 'AD'; 'AC'; 'AS'
                '2H'; '2D'; '2C'; '2S'
                '3H'; '3D'; '3C'; '3S'
                '4H'; '4D'; '4C'; '4S'
                '5H'; '5D'; '5C'; '5S'
                '6H'; '6D'; '6C'; '6S'
                '7H'; '7D'; '7C'; '7S'
                '8H'; '8D'; '8C'; '8S'
                '9H'; '9D'; '9C'; '9S'
                '10H'; '10D'; '10C'; '10S'
                'JH'; 'JD'; 'JC'; 'JS'
                'QH'; 'QD'; 'QC'; 'QS'
                'KH'; 'KD'; 'KC'; 'KS'];
            %}
            obj.deck = [1:10, 10, 10, 10, 1:10, 10, 10, 10, 1:10, 10, 10, ...
                10, 1:10, 10, 10, 10];
            %dealing cards to the dealer
            for ii = 1:2
                card_location = randi(length(obj.deck));
                obj.dealer_hand(ii,1) = obj.deck(card_location);
                obj.deck(card_location) = [];
            end

            %dealing cards to the player
            for ii = 1:2
                card_location = randi(length(obj.deck));
                obj.player_hand(ii,1) = obj.deck(card_location);
                obj.deck(card_location) = [];
            end
        end
        
        function obj = hit_player(obj)
            card_location = randi(length(obj.deck));
            obj.player_hand = [obj.player_hand; obj.deck(card_location)];
            obj.deck(card_location) = [];
        end
        
        function obj = hit_dealer(obj)
            card_location = randi(length(obj.deck));
            obj.dealer_hand = [obj.dealer_hand; obj.deck(card_location)];
            obj.deck(card_location) = [];
        end
    end  
end
                    
                    
                    
                